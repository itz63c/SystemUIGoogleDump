public class inal extends com.android.systemui.qs.tileimpl.QSTileView {
	 /* .source "QSTileViewHorizontal.kt" */
	 /* # instance fields */
	 private android.view.View divider;
	 private android.graphics.drawable.PaintDrawable paintDrawable;
	 /* # direct methods */
	 public inal ( ) {
		 /* .locals 1 */
		 final String v0 = "context"; // const-string v0, "context"
		 kotlin.jvm.internal.Intrinsics .checkNotNullParameter ( p1,v0 );
		 final String v0 = "icon"; // const-string v0, "icon"
		 kotlin.jvm.internal.Intrinsics .checkNotNullParameter ( p2,v0 );
		 int v0 = 0; // const/4 v0, 0x0
		 /* .line 37 */
		 /* invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/tileimpl/QSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V */
		 /* .line 43 */
		 (( android.widget.LinearLayout ) p0 ).setOrientation ( v0 ); // invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V
		 /* .line 44 */
		 /* iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mDualTargetAllowed:Z */
		 /* .line 45 */
		 p1 = this.mBg;
		 int p2 = 0; // const/4 p2, 0x0
		 (( android.widget.ImageView ) p1 ).setImageDrawable ( p2 ); // invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
		 /* .line 46 */
		 (( android.widget.LinearLayout ) p0 ).getContext ( ); // invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
		 int p2 = 2; // const/4 p2, 0x2
		 p1 = 		 com.android.systemui.qs.tileimpl.QSTileImpl .getColorForState ( p1,p2 );
		 android.content.res.ColorStateList .valueOf ( p1 );
		 this.mColorLabelActive = p1;
		 int p1 = 3; // const/4 p1, 0x3
		 /* .line 47 */
		 /* iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mMaxLabelLines:I */
		 return;
	 } // .end method
	 /* # virtual methods */
	 protected void createLabel ( ) {
		 /* .locals 3 */
		 /* .line 51 */
		 /* invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->createLabel()V */
		 /* .line 52 */
		 (( android.widget.LinearLayout ) p0 ).findViewById ( v0 ); // invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
		 /* check-cast v0, Landroid/widget/LinearLayout; */
		 /* const v1, 0x800003 */
		 /* if-nez v0, :cond_0 */
	 } // :cond_0
	 (( android.widget.LinearLayout ) v0 ).setGravity ( v1 ); // invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V
	 /* .line 53 */
} // :goto_0
v0 = this.mLabel;
(( android.widget.TextView ) v0 ).setGravity ( v1 ); // invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V
/* .line 54 */
v0 = this.mLabel;
int v2 = 5; // const/4 v2, 0x5
(( android.widget.TextView ) v0 ).setTextDirection ( v2 ); // invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextDirection(I)V
/* .line 55 */
v0 = this.mSecondLine;
(( android.widget.TextView ) v0 ).setGravity ( v1 ); // invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V
/* .line 56 */
v0 = this.mSecondLine;
(( android.widget.TextView ) v0 ).setTextDirection ( v2 ); // invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextDirection(I)V
/* .line 57 */
(( android.widget.LinearLayout ) p0 ).getContext ( ); // invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
(( android.content.Context ) v0 ).getResources ( ); // invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
v0 = (( android.content.res.Resources ) v0 ).getDimensionPixelSize ( v1 ); // invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
/* .line 58 */
v1 = this.mLabelContainer;
int v2 = 0; // const/4 v2, 0x0
(( android.view.ViewGroup ) v1 ).setPaddingRelative ( v2, v0, v0, v0 ); // invoke-virtual {v1, v2, v0, v0, v0}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V
/* .line 59 */
p0 = this.mLabelContainer;
(( android.view.ViewGroup ) p0 ).getLayoutParams ( ); // invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
final String v0 = "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"; // const-string v0, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"
java.util.Objects .requireNonNull ( p0,v0 );
/* check-cast p0, Landroid/widget/LinearLayout$LayoutParams; */
/* const v0, 0x800013 */
/* iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I */
return;
} // .end method
protected void handleExpand ( Boolean p0 ) {
/* .locals 0 */
return;
} // .end method
protected void handleStateChanged ( com.android.systemui.plugins.qs.QSTile$State p0 ) {
/* .locals 1 */
final String v0 = "state"; // const-string v0, "state"
kotlin.jvm.internal.Intrinsics .checkNotNullParameter ( p1,v0 );
/* .line 92 */
/* invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V */
/* .line 93 */
v0 = this.paintDrawable;
/* if-nez v0, :cond_0 */
} // :cond_0
/* iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I */
p1 = (( com.android.systemui.qs.tileimpl.QSTileBaseView ) p0 ).getCircleColor ( p1 ); // invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getCircleColor(I)I
(( android.graphics.drawable.PaintDrawable ) v0 ).setTint ( p1 ); // invoke-virtual {v0, p1}, Landroid/graphics/drawable/PaintDrawable;->setTint(I)V
/* .line 94 */
} // :goto_0
p1 = this.mSecondLine;
v0 = this.mLabel;
(( android.widget.TextView ) v0 ).getTextColors ( ); // invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;
(( android.widget.TextView ) p1 ).setTextColor ( v0 ); // invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
/* .line 95 */
p1 = this.mLabelContainer;
int v0 = 0; // const/4 v0, 0x0
(( android.view.ViewGroup ) p1 ).setBackground ( v0 ); // invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V
/* .line 96 */
p1 = this.divider;
/* if-nez p1, :cond_1 */
} // :cond_1
p0 = this.mLabel;
(( android.widget.TextView ) p0 ).getTextColors ( ); // invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;
(( android.view.View ) p1 ).setBackgroundTintList ( p0 ); // invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V
} // :goto_1
return;
} // .end method
protected android.graphics.drawable.Drawable newTileBackground ( ) {
/* .locals 3 */
/* .line 67 */
/* invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->newTileBackground()Landroid/graphics/drawable/Drawable; */
/* .line 68 */
v1 = this.paintDrawable;
/* if-nez v1, :cond_0 */
/* .line 69 */
/* new-instance v1, Landroid/graphics/drawable/PaintDrawable; */
int v2 = -1; // const/4 v2, -0x1
/* invoke-direct {v1, v2}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V */
/* const/high16 v2, 0x42480000 # 50.0f */
/* .line 70 */
(( android.graphics.drawable.PaintDrawable ) v1 ).setCornerRadius ( v2 ); // invoke-virtual {v1, v2}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V
/* .line 71 */
v2 = kotlin.Unit.INSTANCE;
/* .line 69 */
this.paintDrawable = v1;
/* .line 73 */
} // :cond_0
/* instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable; */
if ( v1 != null) { // if-eqz v1, :cond_1
/* .line 74 */
/* move-object v1, v0 */
/* check-cast v1, Landroid/graphics/drawable/RippleDrawable; */
p0 = this.paintDrawable;
(( android.graphics.drawable.RippleDrawable ) v1 ).addLayer ( p0 ); // invoke-virtual {v1, p0}, Landroid/graphics/drawable/RippleDrawable;->addLayer(Landroid/graphics/drawable/Drawable;)I
/* .line 77 */
} // :cond_1
p0 = this.paintDrawable;
} // .end method
public void setClickable ( Boolean p0 ) {
/* .locals 3 */
/* .line 82 */
/* invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setClickable(Z)V */
/* .line 83 */
v0 = this.mTileBackground;
(( android.widget.LinearLayout ) p0 ).setBackground ( v0 ); // invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V
if ( p1 != null) { // if-eqz p1, :cond_1
/* .line 84 */
/* iget-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mShowRippleEffect:Z */
if ( p1 != null) { // if-eqz p1, :cond_1
/* .line 85 */
p1 = this.mRipple;
/* if-nez p1, :cond_0 */
} // :cond_0
v0 = (( android.widget.LinearLayout ) p0 ).getLeft ( ); // invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I
v1 = (( android.widget.LinearLayout ) p0 ).getTop ( ); // invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I
v2 = (( android.widget.LinearLayout ) p0 ).getRight ( ); // invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I
p0 = (( android.widget.LinearLayout ) p0 ).getBottom ( ); // invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I
(( android.graphics.drawable.RippleDrawable ) p1 ).setHotspotBounds ( v0, v1, v2, p0 ); // invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V
/* .line 87 */
} // :cond_1
p0 = this.mRipple;
/* if-nez p0, :cond_2 */
} // :cond_2
int p1 = 0; // const/4 p1, 0x0
(( android.graphics.drawable.RippleDrawable ) p0 ).setHotspotBounds ( p1, p1, p1, p1 ); // invoke-virtual {p0, p1, p1, p1, p1}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V
} // :goto_0
return;
} // .end method
protected void updateRippleSize ( ) {
/* .locals 0 */
return;
} // .end method
