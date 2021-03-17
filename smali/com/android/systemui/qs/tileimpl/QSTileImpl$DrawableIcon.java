public class com.android.systemui.qs.tileimpl.QSTileImpl$DrawableIcon extends com.android.systemui.plugins.qs.QSTile$Icon {
	 /* .source "QSTileImpl.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Lcom/android/systemui/qs/tileimpl/QSTileImpl; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x9 */
/* name = "DrawableIcon" */
} // .end annotation
/* # instance fields */
protected final android.graphics.drawable.Drawable mDrawable;
protected final android.graphics.drawable.Drawable mInvisibleDrawable;
/* # direct methods */
public com.android.systemui.qs.tileimpl.QSTileImpl$DrawableIcon ( ) {
/* .locals 0 */
/* .line 658 */
/* invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;-><init>()V */
/* .line 659 */
this.mDrawable = p1;
/* .line 660 */
(( android.graphics.drawable.Drawable ) p1 ).getConstantState ( ); // invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
(( android.graphics.drawable.Drawable$ConstantState ) p1 ).newDrawable ( ); // invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;
this.mInvisibleDrawable = p1;
return;
} // .end method
/* # virtual methods */
public android.graphics.drawable.Drawable getDrawable ( android.content.Context p0 ) {
/* .locals 0 */
/* .line 665 */
p0 = this.mDrawable;
} // .end method
public android.graphics.drawable.Drawable getInvisibleDrawable ( android.content.Context p0 ) {
/* .locals 0 */
/* .line 670 */
p0 = this.mInvisibleDrawable;
} // .end method
public java.lang.String toString ( ) {
/* .locals 0 */
final String p0 = "DrawableIcon"; // const-string p0, "DrawableIcon"
} // .end method
