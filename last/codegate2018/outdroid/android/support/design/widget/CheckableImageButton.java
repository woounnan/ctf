package android.support.design.widget;

import android.content.Context;
import android.support.v4.i.b;
import android.support.v4.i.q;
import android.support.v7.a.a.a;
import android.support.v7.widget.o;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.Checkable;

public class CheckableImageButton extends o implements Checkable {
    private static final int[] a = new int[]{16842912};
    private boolean b;

    public CheckableImageButton(Context context) {
        this(context, null);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.imageButtonStyle);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        q.a((View) this, new b(this) {
            final /* synthetic */ CheckableImageButton a;

            {
                this.a = r1;
            }

            public void a(View view, android.support.v4.i.a.b bVar) {
                super.a(view, bVar);
                bVar.a(true);
                bVar.b(this.a.isChecked());
            }

            public void a(View view, AccessibilityEvent accessibilityEvent) {
                super.a(view, accessibilityEvent);
                accessibilityEvent.setChecked(this.a.isChecked());
            }
        });
    }

    public boolean isChecked() {
        return this.b;
    }

    public int[] onCreateDrawableState(int i) {
        return this.b ? mergeDrawableStates(super.onCreateDrawableState(a.length + i), a) : super.onCreateDrawableState(i);
    }

    public void setChecked(boolean z) {
        if (this.b != z) {
            this.b = z;
            refreshDrawableState();
            sendAccessibilityEvent(2048);
        }
    }

    public void toggle() {
        setChecked(!this.b);
    }
}
