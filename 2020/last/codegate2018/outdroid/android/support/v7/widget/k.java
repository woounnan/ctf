package android.support.v7.widget;

import android.content.Context;
import android.support.v7.b.a.b;
import android.util.AttributeSet;
import android.widget.CheckedTextView;
import android.widget.TextView;

public class k extends CheckedTextView {
    private static final int[] a = new int[]{16843016};
    private final z b;

    public k(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16843720);
    }

    public k(Context context, AttributeSet attributeSet, int i) {
        super(bf.a(context), attributeSet, i);
        this.b = z.a((TextView) this);
        this.b.a(attributeSet, i);
        this.b.a();
        bi a = bi.a(getContext(), attributeSet, a, i, 0);
        setCheckMarkDrawable(a.a(0));
        a.a();
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.b != null) {
            this.b.a();
        }
    }

    public void setCheckMarkDrawable(int i) {
        setCheckMarkDrawable(b.b(getContext(), i));
    }

    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        if (this.b != null) {
            this.b.a(context, i);
        }
    }
}
