package android.support.design.widget;

import android.support.v4.h.k.a;
import android.support.v4.h.k.b;
import android.support.v4.h.m;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

final class e<T> {
    private final a<ArrayList<T>> a = new b(10);
    private final m<T, ArrayList<T>> b = new m();
    private final ArrayList<T> c = new ArrayList();
    private final HashSet<T> d = new HashSet();

    e() {
    }

    private void a(T t, ArrayList<T> arrayList, HashSet<T> hashSet) {
        if (!arrayList.contains(t)) {
            if (hashSet.contains(t)) {
                throw new RuntimeException("This graph contains cyclic dependencies");
            }
            hashSet.add(t);
            ArrayList arrayList2 = (ArrayList) this.b.get(t);
            if (arrayList2 != null) {
                int size = arrayList2.size();
                for (int i = 0; i < size; i++) {
                    a(arrayList2.get(i), arrayList, hashSet);
                }
            }
            hashSet.remove(t);
            arrayList.add(t);
        }
    }

    private void a(ArrayList<T> arrayList) {
        arrayList.clear();
        this.a.a(arrayList);
    }

    private ArrayList<T> c() {
        ArrayList<T> arrayList = (ArrayList) this.a.a();
        return arrayList == null ? new ArrayList() : arrayList;
    }

    void a() {
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            ArrayList arrayList = (ArrayList) this.b.c(i);
            if (arrayList != null) {
                a(arrayList);
            }
        }
        this.b.clear();
    }

    void a(T t) {
        if (!this.b.containsKey(t)) {
            this.b.put(t, null);
        }
    }

    void a(T t, T t2) {
        if (this.b.containsKey(t) && this.b.containsKey(t2)) {
            ArrayList arrayList = (ArrayList) this.b.get(t);
            if (arrayList == null) {
                arrayList = c();
                this.b.put(t, arrayList);
            }
            arrayList.add(t2);
            return;
        }
        throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
    }

    ArrayList<T> b() {
        this.c.clear();
        this.d.clear();
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            a(this.b.b(i), this.c, this.d);
        }
        return this.c;
    }

    boolean b(T t) {
        return this.b.containsKey(t);
    }

    List c(T t) {
        return (List) this.b.get(t);
    }

    List<T> d(T t) {
        List<T> list = null;
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            ArrayList arrayList = (ArrayList) this.b.c(i);
            if (arrayList != null && arrayList.contains(t)) {
                if (list == null) {
                    arrayList = new ArrayList();
                } else {
                    List list2 = list;
                }
                arrayList.add(this.b.b(i));
                list = arrayList;
            }
        }
        return list;
    }

    boolean e(T t) {
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            ArrayList arrayList = (ArrayList) this.b.c(i);
            if (arrayList != null && arrayList.contains(t)) {
                return true;
            }
        }
        return false;
    }
}
