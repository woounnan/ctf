package android.support.v7.app;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.support.v4.i.q;
import android.support.v7.a.a.j;
import android.support.v7.view.d;
import android.support.v7.widget.ab;
import android.support.v7.widget.bf;
import android.support.v7.widget.g;
import android.support.v7.widget.i;
import android.support.v7.widget.k;
import android.support.v7.widget.n;
import android.support.v7.widget.o;
import android.support.v7.widget.r;
import android.support.v7.widget.u;
import android.support.v7.widget.v;
import android.support.v7.widget.w;
import android.support.v7.widget.y;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Map;

class m {
    private static final Class<?>[] a = new Class[]{Context.class, AttributeSet.class};
    private static final int[] b = new int[]{16843375};
    private static final String[] c = new String[]{"android.widget.", "android.view.", "android.webkit."};
    private static final Map<String, Constructor<? extends View>> d = new android.support.v4.h.a();
    private final Object[] e = new Object[2];

    private static class a implements OnClickListener {
        private final View a;
        private final String b;
        private Method c;
        private Context d;

        public a(View view, String str) {
            this.a = view;
            this.b = str;
        }

        private void a(Context context, String str) {
            for (Context context2 = context; context2 != null; context2 = context2 instanceof ContextWrapper ? ((ContextWrapper) context2).getBaseContext() : null) {
                try {
                    if (!context2.isRestricted()) {
                        Method method = context2.getClass().getMethod(this.b, new Class[]{View.class});
                        if (method != null) {
                            this.c = method;
                            this.d = context2;
                            return;
                        }
                    }
                } catch (NoSuchMethodException e) {
                }
            }
            int id = this.a.getId();
            throw new IllegalStateException("Could not find method " + this.b + "(View) in a parent or ancestor Context for android:onClick " + "attribute defined on view " + this.a.getClass() + (id == -1 ? "" : " with id '" + this.a.getContext().getResources().getResourceEntryName(id) + "'"));
        }

        public void onClick(View view) {
            if (this.c == null) {
                a(this.a.getContext(), this.b);
            }
            try {
                this.c.invoke(this.d, new Object[]{view});
            } catch (Throwable e) {
                throw new IllegalStateException("Could not execute non-public method for android:onClick", e);
            } catch (Throwable e2) {
                throw new IllegalStateException("Could not execute method for android:onClick", e2);
            }
        }
    }

    m() {
    }

    private static Context a(Context context, AttributeSet attributeSet, boolean z, boolean z2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, j.View, 0, 0);
        int resourceId = z ? obtainStyledAttributes.getResourceId(j.View_android_theme, 0) : 0;
        if (z2 && resourceId == 0) {
            resourceId = obtainStyledAttributes.getResourceId(j.View_theme, 0);
            if (resourceId != 0) {
                Log.i("AppCompatViewInflater", "app:theme is now deprecated. Please move to using android:theme instead.");
            }
        }
        int i = resourceId;
        obtainStyledAttributes.recycle();
        return i != 0 ? ((context instanceof d) && ((d) context).a() == i) ? context : new d(context, i) : context;
    }

    private View a(Context context, String str, AttributeSet attributeSet) {
        if (str.equals("view")) {
            str = attributeSet.getAttributeValue(null, "class");
        }
        try {
            this.e[0] = context;
            this.e[1] = attributeSet;
            View a;
            if (-1 == str.indexOf(46)) {
                for (String a2 : c) {
                    a = a(context, str, a2);
                    if (a != null) {
                        return a;
                    }
                }
                this.e[0] = null;
                this.e[1] = null;
                return null;
            }
            a = a(context, str, null);
            this.e[0] = null;
            this.e[1] = null;
            return a;
        } catch (Exception e) {
            return null;
        } finally {
            this.e[0] = null;
            this.e[1] = null;
        }
    }

    private View a(Context context, String str, String str2) {
        Constructor constructor = (Constructor) d.get(str);
        if (constructor == null) {
            try {
                constructor = context.getClassLoader().loadClass(str2 != null ? str2 + str : str).asSubclass(View.class).getConstructor(a);
                d.put(str, constructor);
            } catch (Exception e) {
                return null;
            }
        }
        constructor.setAccessible(true);
        return (View) constructor.newInstance(this.e);
    }

    private void a(View view, AttributeSet attributeSet) {
        Context context = view.getContext();
        if (!(context instanceof ContextWrapper)) {
            return;
        }
        if (VERSION.SDK_INT < 15 || q.x(view)) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b);
            String string = obtainStyledAttributes.getString(0);
            if (string != null) {
                view.setOnClickListener(new a(view, string));
            }
            obtainStyledAttributes.recycle();
        }
    }

    public final View a(View view, String str, Context context, AttributeSet attributeSet, boolean z, boolean z2, boolean z3, boolean z4) {
        Context context2 = (!z || view == null) ? context : view.getContext();
        if (z2 || z3) {
            context2 = a(context2, attributeSet, z2, z3);
        }
        if (z4) {
            context2 = bf.a(context2);
        }
        View view2 = null;
        Object obj = -1;
        switch (str.hashCode()) {
            case -1946472170:
                if (str.equals("RatingBar")) {
                    obj = 11;
                    break;
                }
                break;
            case -1455429095:
                if (str.equals("CheckedTextView")) {
                    obj = 8;
                    break;
                }
                break;
            case -1346021293:
                if (str.equals("MultiAutoCompleteTextView")) {
                    obj = 10;
                    break;
                }
                break;
            case -938935918:
                if (str.equals("TextView")) {
                    obj = null;
                    break;
                }
                break;
            case -937446323:
                if (str.equals("ImageButton")) {
                    obj = 5;
                    break;
                }
                break;
            case -658531749:
                if (str.equals("SeekBar")) {
                    obj = 12;
                    break;
                }
                break;
            case -339785223:
                if (str.equals("Spinner")) {
                    obj = 4;
                    break;
                }
                break;
            case 776382189:
                if (str.equals("RadioButton")) {
                    obj = 7;
                    break;
                }
                break;
            case 1125864064:
                if (str.equals("ImageView")) {
                    obj = 1;
                    break;
                }
                break;
            case 1413872058:
                if (str.equals("AutoCompleteTextView")) {
                    obj = 9;
                    break;
                }
                break;
            case 1601505219:
                if (str.equals("CheckBox")) {
                    obj = 6;
                    break;
                }
                break;
            case 1666676343:
                if (str.equals("EditText")) {
                    obj = 3;
                    break;
                }
                break;
            case 2001146706:
                if (str.equals("Button")) {
                    obj = 2;
                    break;
                }
                break;
        }
        switch (obj) {
            case null:
                view2 = new ab(context2, attributeSet);
                break;
            case 1:
                view2 = new android.support.v7.widget.q(context2, attributeSet);
                break;
            case 2:
                view2 = new i(context2, attributeSet);
                break;
            case 3:
                view2 = new n(context2, attributeSet);
                break;
            case 4:
                view2 = new y(context2, attributeSet);
                break;
            case 5:
                view2 = new o(context2, attributeSet);
                break;
            case 6:
                view2 = new android.support.v7.widget.j(context2, attributeSet);
                break;
            case 7:
                view2 = new u(context2, attributeSet);
                break;
            case 8:
                view2 = new k(context2, attributeSet);
                break;
            case 9:
                view2 = new g(context2, attributeSet);
                break;
            case 10:
                view2 = new r(context2, attributeSet);
                break;
            case 11:
                view2 = new v(context2, attributeSet);
                break;
            case 12:
                view2 = new w(context2, attributeSet);
                break;
        }
        View a = (view2 != null || context == context2) ? view2 : a(context2, str, attributeSet);
        if (a != null) {
            a(a, attributeSet);
        }
        return a;
    }
}
