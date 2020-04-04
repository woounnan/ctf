package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.support.v4.i.p;
import android.support.v4.widget.m;
import android.support.v7.a.a.a;
import android.util.AttributeSet;
import android.widget.ImageButton;

public class o extends ImageButton implements p, m {
    private final h a;
    private final p b;

    public o(Context context) {
        this(context, null);
    }

    public o(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.imageButtonStyle);
    }

    public o(Context context, AttributeSet attributeSet, int i) {
        super(bf.a(context), attributeSet, i);
        this.a = new h(this);
        this.a.a(attributeSet, i);
        this.b = new p(this);
        this.b.a(attributeSet, i);
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.a != null) {
            this.a.c();
        }
        if (this.b != null) {
            this.b.d();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        return this.a != null ? this.a.a() : null;
    }

    public Mode getSupportBackgroundTintMode() {
        return this.a != null ? this.a.b() : null;
    }

    public ColorStateList getSupportImageTintList() {
        return this.b != null ? this.b.b() : null;
    }

    public Mode getSupportImageTintMode() {
        return this.b != null ? this.b.c() : null;
    }

    public boolean hasOverlappingRendering() {
        return this.b.a() && super.hasOverlappingRendering();
    }

    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.a != null) {
            this.a.a(drawable);
        }
    }

    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        if (this.a != null) {
            this.a.a(i);
        }
    }

    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        if (this.b != null) {
            this.b.d();
        }
    }

    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        if (this.b != null) {
            this.b.d();
        }
    }

    public void setImageIcon(Icon icon) {
        super.setImageIcon(icon);
        if (this.b != null) {
            this.b.d();
        }
    }

    public void setImageResource(int i) {
        this.b.a(i);
    }

    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        if (this.b != null) {
            this.b.d();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (this.a != null) {
            this.a.a(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(Mode mode) {
        if (this.a != null) {
            this.a.a(mode);
        }
    }

    public void setSupportImageTintList(ColorStateList colorStateList) {
        if (this.b != null) {
            this.b.a(colorStateList);
        }
    }

    public void setSupportImageTintMode(Mode mode) {
        if (this.b != null) {
            this.b.a(mode);
        }
    }
}
