public class com.android.systemui.qs.tileimpl.QSTileBaseView extends com.android.systemui.plugins.qs.QSTileView {
	 /* .source "QSTileBaseView.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/MemberClasses; */
	 /* value = { */
	 /* Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H; */
	 /* } */
} // .end annotation
/* # instance fields */
private java.lang.String mAccessibilityClass;
protected final android.widget.ImageView mBg;
private Integer mCircleColor;
private Boolean mCollapsedView;
private final Integer mColorActive;
private final Integer mColorDisabled;
private final Integer mColorInactive;
protected final android.os.Handler mHandler;
protected com.android.systemui.plugins.qs.QSIconView mIcon;
private final android.widget.FrameLayout mIconFrame;
private Integer mLastState;
private java.lang.CharSequence mLastStateDescription;
private final mLocInScreen;
protected android.graphics.drawable.RippleDrawable mRipple;
protected Boolean mShowRippleEffect;
private java.lang.CharSequence mStateDescriptionDeltas;
private Float mStrokeWidthActive;
private Float mStrokeWidthInactive;
protected android.graphics.drawable.Drawable mTileBackground;
private Boolean mTileState;
/* # direct methods */
public static void $r8$lambda$Ka8xoX3CdfcHW_A1g6BZP75bwsE ( com.android.systemui.qs.tileimpl.QSTileBaseView p0, android.animation.ValueAnimator p1 ) { //synthethic
	 /* .locals 0 */
	 /* invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->lambda$handleStateChanged$3(Landroid/animation/ValueAnimator;)V */
	 return;
} // .end method
public static Boolean $r8$lambda$nK3lUMZn0_NJcMYBzFJI0m5QqHQ ( com.android.systemui.plugins.qs.QSTile p0, android.view.View p1 ) { //synthethic
	 /* .locals 0 */
	 p0 = 	 com.android.systemui.qs.tileimpl.QSTileBaseView .lambda$init$2 ( p0,p1 );
} // .end method
public static void $r8$lambda$nemjgoJevMXSve7NdTo9KdEczpA ( com.android.systemui.plugins.qs.QSTile p0, android.view.View p1 ) { //synthethic
	 /* .locals 0 */
	 com.android.systemui.qs.tileimpl.QSTileBaseView .lambda$init$0 ( p0,p1 );
	 return;
} // .end method
public static void $r8$lambda$o4pifwlF6cnQvSxstfiUXp8aT_o ( com.android.systemui.plugins.qs.QSTile p0, android.view.View p1 ) { //synthethic
	 /* .locals 0 */
	 com.android.systemui.qs.tileimpl.QSTileBaseView .lambda$init$1 ( p0,p1 );
	 return;
} // .end method
public com.android.systemui.qs.tileimpl.QSTileBaseView ( ) {
	 /* .locals 8 */
	 /* .line 89 */
	 /* invoke-direct {p0, p1}, Lcom/android/systemui/plugins/qs/QSTileView;-><init>(Landroid/content/Context;)V */
	 /* .line 59 */
	 /* new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H; */
	 /* invoke-direct {v0, p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;)V */
	 this.mHandler = v0;
	 int v0 = 2; // const/4 v0, 0x2
	 /* new-array v0, v0, [I */
	 /* .line 60 */
	 this.mLocInScreen = v0;
	 int v0 = 1; // const/4 v0, 0x1
	 /* .line 68 */
	 /* iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mShowRippleEffect:Z */
	 int v1 = 0; // const/4 v1, 0x0
	 /* .line 80 */
	 this.mStateDescriptionDeltas = v1;
	 int v1 = -1; // const/4 v1, -0x1
	 /* .line 82 */
	 /* iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLastState:I */
	 /* .line 91 */
	 (( android.content.Context ) p1 ).getResources ( ); // invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
	 (( android.content.res.Resources ) v1 ).getDimensionPixelSize ( v2 ); // invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
	 /* .line 92 */
	 /* new-instance v1, Landroid/widget/FrameLayout; */
	 /* invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V */
	 this.mIconFrame = v1;
	 /* .line 93 */
	 (( android.content.Context ) p1 ).getResources ( ); // invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
	 /* const v3, 0x10500be */
	 /* .line 94 */
	 v2 = 	 (( android.content.res.Resources ) v2 ).getDimension ( v3 ); // invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F
	 /* iput v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mStrokeWidthActive:F */
	 /* .line 95 */
	 (( android.content.Context ) p1 ).getResources ( ); // invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
	 /* const v3, 0x10500bf */
	 /* .line 96 */
	 v2 = 	 (( android.content.res.Resources ) v2 ).getDimension ( v3 ); // invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F
	 /* iput v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mStrokeWidthInactive:F */
	 /* .line 97 */
	 (( android.content.Context ) p1 ).getResources ( ); // invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
	 v2 = 	 (( android.content.res.Resources ) v2 ).getDimensionPixelSize ( v3 ); // invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
	 /* .line 98 */
	 /* new-instance v3, Landroid/widget/LinearLayout$LayoutParams; */
	 /* invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V */
	 (( android.widget.LinearLayout ) p0 ).addView ( v1, v3 ); // invoke-virtual {p0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
	 /* .line 99 */
	 /* new-instance v2, Landroid/widget/ImageView; */
	 (( android.widget.LinearLayout ) p0 ).getContext ( ); // invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
	 /* invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V */
	 this.mBg = v2;
	 /* .line 100 */
	 /* new-instance v3, Landroid/graphics/Path; */
	 /* .line 101 */
	 (( android.content.Context ) p1 ).getResources ( ); // invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
	 /* const v5, 0x1040234 */
	 (( android.content.res.Resources ) v4 ).getString ( v5 ); // invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
	 /* .line 100 */
	 android.util.PathParser .createPathFromPathData ( v4 );
	 /* invoke-direct {v3, v4}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V */
	 /* .line 103 */
	 /* new-instance v4, Landroid/graphics/drawable/shapes/PathShape; */
	 /* const/high16 v5, 0x42c80000 # 100.0f */
	 /* invoke-direct {v4, v3, v5, v5}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V */
	 /* .line 104 */
	 /* new-instance v3, Landroid/graphics/drawable/ShapeDrawable; */
	 /* invoke-direct {v3, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V */
	 int v4 = 0; // const/4 v4, 0x0
	 /* .line 105 */
	 android.content.res.ColorStateList .valueOf ( v4 );
	 (( android.graphics.drawable.ShapeDrawable ) v3 ).setTintList ( v5 ); // invoke-virtual {v3, v5}, Landroid/graphics/drawable/ShapeDrawable;->setTintList(Landroid/content/res/ColorStateList;)V
	 /* .line 106 */
	 (( android.content.Context ) p1 ).getResources ( ); // invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
	 /* .line 107 */
	 v5 = 	 (( android.content.res.Resources ) v5 ).getDimension ( v6 ); // invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F
	 int v6 = 0; // const/4 v6, 0x0
	 /* cmpl-float v6, v5, v6 */
	 /* if-lez v6, :cond_0 */
	 /* .line 109 */
	 (( android.graphics.drawable.ShapeDrawable ) v3 ).getPaint ( ); // invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;
	 v7 = android.graphics.Paint$Style.STROKE;
	 (( android.graphics.Paint ) v6 ).setStyle ( v7 ); // invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
	 /* .line 110 */
	 (( android.graphics.drawable.ShapeDrawable ) v3 ).getPaint ( ); // invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;
	 (( android.graphics.Paint ) v6 ).setStrokeWidth ( v5 ); // invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V
	 /* .line 112 */
} // :cond_0
(( android.content.Context ) p1 ).getResources ( ); // invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
v5 = (( android.content.res.Resources ) v5 ).getDimensionPixelSize ( v6 ); // invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
/* .line 113 */
(( android.graphics.drawable.ShapeDrawable ) v3 ).setIntrinsicHeight ( v5 ); // invoke-virtual {v3, v5}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V
/* .line 114 */
(( android.graphics.drawable.ShapeDrawable ) v3 ).setIntrinsicWidth ( v5 ); // invoke-virtual {v3, v5}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V
/* .line 115 */
(( android.widget.ImageView ) v2 ).setImageDrawable ( v3 ); // invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
/* .line 116 */
/* new-instance v3, Landroid/widget/FrameLayout$LayoutParams; */
/* const/16 v6, 0x11 */
/* invoke-direct {v3, v5, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V */
/* .line 117 */
(( android.widget.FrameLayout ) v1 ).addView ( v2, v3 ); // invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
/* .line 118 */
(( android.widget.ImageView ) v2 ).setLayoutParams ( v3 ); // invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
/* .line 119 */
this.mIcon = p2;
/* .line 120 */
/* new-instance p2, Landroid/widget/FrameLayout$LayoutParams; */
int v2 = -2; // const/4 v2, -0x2
/* invoke-direct {p2, v2, v2, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V */
/* .line 123 */
v2 = this.mIcon;
(( android.widget.FrameLayout ) v1 ).addView ( v2, p2 ); // invoke-virtual {v1, v2, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
/* .line 124 */
(( android.widget.FrameLayout ) v1 ).setClipChildren ( v4 ); // invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setClipChildren(Z)V
/* .line 125 */
(( android.widget.FrameLayout ) v1 ).setClipToPadding ( v4 ); // invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V
/* .line 127 */
(( com.android.systemui.qs.tileimpl.QSTileBaseView ) p0 ).newTileBackground ( ); // invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->newTileBackground()Landroid/graphics/drawable/Drawable;
this.mTileBackground = p2;
/* .line 128 */
/* instance-of v1, p2, Landroid/graphics/drawable/RippleDrawable; */
if ( v1 != null) { // if-eqz v1, :cond_1
	 /* .line 129 */
	 /* check-cast p2, Landroid/graphics/drawable/RippleDrawable; */
	 /* invoke-direct {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setRipple(Landroid/graphics/drawable/RippleDrawable;)V */
	 /* .line 131 */
} // :cond_1
(( android.widget.LinearLayout ) p0 ).setImportantForAccessibility ( v0 ); // invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V
/* .line 132 */
p2 = this.mTileBackground;
(( android.widget.LinearLayout ) p0 ).setBackground ( p2 ); // invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V
/* const p2, 0x1010435 */
/* .line 134 */
p2 = com.android.settingslib.Utils .getColorAttrDefaultColor ( p1,p2 );
/* iput p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mColorActive:I */
/* const p2, 0x101042a */
/* .line 136 */
p2 = com.android.settingslib.Utils .getColorAttrDefaultColor ( p1,p2 );
/* .line 135 */
p2 = com.android.settingslib.Utils .getDisabled ( p1,p2 );
/* iput p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mColorDisabled:I */
/* const p2, 0x1010038 */
/* .line 137 */
p1 = com.android.settingslib.Utils .getColorAttrDefaultColor ( p1,p2 );
/* iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mColorInactive:I */
/* .line 139 */
(( android.widget.LinearLayout ) p0 ).setPadding ( v4, v4, v4, v4 ); // invoke-virtual {p0, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V
/* .line 140 */
(( android.widget.LinearLayout ) p0 ).setClipChildren ( v4 ); // invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setClipChildren(Z)V
/* .line 141 */
(( android.widget.LinearLayout ) p0 ).setClipToPadding ( v4 ); // invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V
/* .line 142 */
/* iput-boolean p3, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mCollapsedView:Z */
/* .line 143 */
(( android.widget.LinearLayout ) p0 ).setFocusable ( v0 ); // invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setFocusable(Z)V
return;
} // .end method
private void lambda$handleStateChanged$3 ( android.animation.ValueAnimator p0 ) { //synthethic
/* .locals 0 */
/* .line 247 */
p0 = this.mBg;
/* .line 248 */
(( android.animation.ValueAnimator ) p1 ).getAnimatedValue ( ); // invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;
/* check-cast p1, Ljava/lang/Integer; */
p1 = (( java.lang.Integer ) p1 ).intValue ( ); // invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I
/* .line 247 */
android.content.res.ColorStateList .valueOf ( p1 );
(( android.widget.ImageView ) p0 ).setImageTintList ( p1 ); // invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V
return;
} // .end method
private static void lambda$init$0 ( com.android.systemui.plugins.qs.QSTile p0, android.view.View p1 ) { //synthethic
/* .locals 0 */
/* .line 175 */
return;
} // .end method
private static void lambda$init$1 ( com.android.systemui.plugins.qs.QSTile p0, android.view.View p1 ) { //synthethic
/* .locals 0 */
/* .line 175 */
return;
} // .end method
private static Boolean lambda$init$2 ( com.android.systemui.plugins.qs.QSTile p0, android.view.View p1 ) { //synthethic
/* .locals 0 */
/* .line 176 */
int p0 = 1; // const/4 p0, 0x1
} // .end method
private void setRipple ( android.graphics.drawable.RippleDrawable p0 ) {
/* .locals 0 */
/* .line 159 */
this.mRipple = p1;
/* .line 160 */
p1 = (( android.widget.LinearLayout ) p0 ).getWidth ( ); // invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I
if ( p1 != null) { // if-eqz p1, :cond_0
	 /* .line 161 */
	 (( com.android.systemui.qs.tileimpl.QSTileBaseView ) p0 ).updateRippleSize ( ); // invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->updateRippleSize()V
} // :cond_0
return;
} // .end method
private void updateStrokeShapeWidth ( com.android.systemui.plugins.qs.QSTile$State p0 ) {
/* .locals 3 */
/* .line 217 */
(( android.widget.LinearLayout ) p0 ).getContext ( ); // invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
(( android.content.Context ) v0 ).getResources ( ); // invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
/* .line 218 */
v0 = this.mBg;
(( android.widget.ImageView ) v0 ).getDrawable ( ); // invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
/* instance-of v0, v0, Landroid/graphics/drawable/ShapeDrawable; */
/* if-nez v0, :cond_0 */
return;
/* .line 221 */
} // :cond_0
v0 = this.mBg;
(( android.widget.ImageView ) v0 ).getDrawable ( ); // invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
/* check-cast v0, Landroid/graphics/drawable/ShapeDrawable; */
/* .line 222 */
(( android.graphics.drawable.ShapeDrawable ) v0 ).getPaint ( ); // invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;
v2 = android.graphics.Paint$Style.FILL;
(( android.graphics.Paint ) v1 ).setStyle ( v2 ); // invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
/* .line 223 */
/* iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I */
int v1 = 1; // const/4 v1, 0x1
int v2 = 0; // const/4 v2, 0x0
/* if-eq p1, v1, :cond_2 */
int v1 = 2; // const/4 v1, 0x2
/* if-eq p1, v1, :cond_1 */
/* .line 231 */
} // :cond_1
/* iget p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mStrokeWidthActive:F */
/* cmpl-float p1, p1, v2 */
/* if-ltz p1, :cond_3 */
/* .line 232 */
(( android.graphics.drawable.ShapeDrawable ) v0 ).getPaint ( ); // invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;
v1 = android.graphics.Paint$Style.STROKE;
(( android.graphics.Paint ) p1 ).setStyle ( v1 ); // invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
/* .line 233 */
(( android.graphics.drawable.ShapeDrawable ) v0 ).getPaint ( ); // invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;
/* iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mStrokeWidthActive:F */
(( android.graphics.Paint ) p1 ).setStrokeWidth ( p0 ); // invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V
/* .line 225 */
} // :cond_2
/* iget p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mStrokeWidthInactive:F */
/* cmpl-float p1, p1, v2 */
/* if-ltz p1, :cond_3 */
/* .line 226 */
(( android.graphics.drawable.ShapeDrawable ) v0 ).getPaint ( ); // invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;
v1 = android.graphics.Paint$Style.STROKE;
(( android.graphics.Paint ) p1 ).setStyle ( v1 ); // invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
/* .line 227 */
(( android.graphics.drawable.ShapeDrawable ) v0 ).getPaint ( ); // invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;
/* iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mStrokeWidthInactive:F */
(( android.graphics.Paint ) p1 ).setStrokeWidth ( p0 ); // invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V
} // :cond_3
} // :goto_0
return;
} // .end method
/* # virtual methods */
protected Boolean animationsEnabled ( ) {
/* .locals 3 */
/* .line 304 */
v0 = (( android.widget.LinearLayout ) p0 ).isShown ( ); // invoke-virtual {p0}, Landroid/widget/LinearLayout;->isShown()Z
int v1 = 0; // const/4 v1, 0x0
/* if-nez v0, :cond_0 */
/* .line 307 */
} // :cond_0
v0 = (( android.widget.LinearLayout ) p0 ).getAlpha ( ); // invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAlpha()F
/* const/high16 v2, 0x3f800000 # 1.0f */
/* cmpl-float v0, v0, v2 */
if ( v0 != null) { // if-eqz v0, :cond_1
/* .line 310 */
} // :cond_1
v0 = this.mLocInScreen;
(( android.widget.LinearLayout ) p0 ).getLocationOnScreen ( v0 ); // invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V
/* .line 311 */
v0 = this.mLocInScreen;
int v2 = 1; // const/4 v2, 0x1
/* aget v0, v0, v2 */
p0 = (( android.widget.LinearLayout ) p0 ).getHeight ( ); // invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I
/* neg-int p0, p0 */
/* if-lt v0, p0, :cond_2 */
/* move v1, v2 */
} // :cond_2
} // .end method
public android.view.View getBgCircle ( ) {
/* .locals 0 */
/* .line 147 */
p0 = this.mBg;
} // .end method
protected Integer getCircleColor ( Integer p0 ) {
/* .locals 1 */
if ( p1 != null) { // if-eqz p1, :cond_1
int v0 = 1; // const/4 v0, 0x1
/* if-eq p1, v0, :cond_1 */
int v0 = 2; // const/4 v0, 0x2
/* if-eq p1, v0, :cond_0 */
/* .line 322 */
/* new-instance p0, Ljava/lang/StringBuilder; */
/* invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V */
final String v0 = "Invalid state "; // const-string v0, "Invalid state "
(( java.lang.StringBuilder ) p0 ).append ( v0 ); // invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) p0 ).append ( p1 ); // invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) p0 ).toString ( ); // invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
final String p1 = "QSTileBaseView"; // const-string p1, "QSTileBaseView"
android.util.Log .e ( p1,p0 );
int p0 = 0; // const/4 p0, 0x0
/* .line 317 */
} // :cond_0
/* iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mColorActive:I */
/* .line 320 */
} // :cond_1
/* iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mColorDisabled:I */
} // .end method
public Integer getDetailY ( ) {
/* .locals 1 */
/* .line 335 */
v0 = (( android.widget.LinearLayout ) p0 ).getTop ( ); // invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I
p0 = (( android.widget.LinearLayout ) p0 ).getHeight ( ); // invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I
/* div-int/lit8 p0, p0, 0x2 */
/* add-int/2addr v0, p0 */
} // .end method
public com.android.systemui.plugins.qs.QSIconView getIcon ( ) {
/* .locals 0 */
/* .line 339 */
p0 = this.mIcon;
} // .end method
public android.view.View getIconWithBackground ( ) {
/* .locals 0 */
/* .line 343 */
p0 = this.mIconFrame;
} // .end method
protected void handleStateChanged ( com.android.systemui.plugins.qs.QSTile$State p0 ) {
/* .locals 8 */
/* .line 240 */
/* invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->updateStrokeShapeWidth(Lcom/android/systemui/plugins/qs/QSTile$State;)V */
/* .line 241 */
/* iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I */
v0 = (( com.android.systemui.qs.tileimpl.QSTileBaseView ) p0 ).getCircleColor ( v0 ); // invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getCircleColor(I)I
/* .line 242 */
v1 = (( com.android.systemui.qs.tileimpl.QSTileBaseView ) p0 ).animationsEnabled ( ); // invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->animationsEnabled()Z
/* .line 243 */
/* iget v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mCircleColor:I */
int v3 = 2; // const/4 v3, 0x2
int v4 = 0; // const/4 v4, 0x0
int v5 = 1; // const/4 v5, 0x1
/* if-eq v0, v2, :cond_1 */
if ( v1 != null) { // if-eqz v1, :cond_0
/* new-array v6, v3, [I */
/* aput v2, v6, v4 */
/* aput v0, v6, v5 */
/* .line 245 */
android.animation.ValueAnimator .ofArgb ( v6 );
/* const-wide/16 v6, 0x15e */
/* .line 246 */
(( android.animation.ValueAnimator ) v2 ).setDuration ( v6, v7 ); // invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;
/* .line 247 */
/* new-instance v6, Lcom/android/systemui/qs/tileimpl/QSTileBaseView-$$ExternalSyntheticLambda0; */
/* invoke-direct {v6, p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;)V */
(( android.animation.ValueAnimator ) v2 ).addUpdateListener ( v6 ); // invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
/* .line 249 */
(( android.animation.ValueAnimator ) v2 ).start ( ); // invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V
/* .line 251 */
} // :cond_0
v2 = this.mBg;
com.android.systemui.qs.tileimpl.QSIconViewImpl .setTint ( v2,v0 );
/* .line 253 */
} // :goto_0
/* iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mCircleColor:I */
/* .line 256 */
} // :cond_1
/* iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->showRippleEffect:Z */
/* iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mShowRippleEffect:Z */
/* .line 257 */
/* iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I */
if ( v0 != null) { // if-eqz v0, :cond_2
/* move v4, v5 */
} // :cond_2
(( com.android.systemui.qs.tileimpl.QSTileBaseView ) p0 ).setClickable ( v4 ); // invoke-virtual {p0, v4}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setClickable(Z)V
/* .line 258 */
/* iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->handlesLongClick:Z */
(( android.widget.LinearLayout ) p0 ).setLongClickable ( v0 ); // invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLongClickable(Z)V
/* .line 259 */
v0 = this.mIcon;
(( com.android.systemui.plugins.qs.QSIconView ) v0 ).setIcon ( p1, v1 ); // invoke-virtual {v0, p1, v1}, Lcom/android/systemui/plugins/qs/QSIconView;->setIcon(Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
/* .line 260 */
v0 = this.contentDescription;
(( android.widget.LinearLayout ) p0 ).setContentDescription ( v0 ); // invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V
/* .line 261 */
/* new-instance v0, Ljava/lang/StringBuilder; */
/* invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V */
/* .line 262 */
/* iget v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I */
if ( v1 != null) { // if-eqz v1, :cond_5
/* if-eq v1, v5, :cond_4 */
/* if-eq v1, v3, :cond_3 */
/* .line 272 */
} // :cond_3
/* instance-of v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState; */
if ( v1 != null) { // if-eqz v1, :cond_6
/* .line 273 */
v1 = this.mContext;
(( android.content.Context ) v1 ).getString ( v2 ); // invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 267 */
} // :cond_4
/* instance-of v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState; */
if ( v1 != null) { // if-eqz v1, :cond_6
/* .line 268 */
v1 = this.mContext;
(( android.content.Context ) v1 ).getString ( v2 ); // invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 264 */
} // :cond_5
v1 = this.mContext;
(( android.content.Context ) v1 ).getString ( v2 ); // invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 279 */
} // :cond_6
} // :goto_1
v1 = this.stateDescription;
v1 = android.text.TextUtils .isEmpty ( v1 );
/* if-nez v1, :cond_7 */
final String v1 = ", "; // const-string v1, ", "
/* .line 280 */
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 281 */
v1 = this.stateDescription;
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
/* .line 282 */
/* iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLastState:I */
int v2 = -1; // const/4 v2, -0x1
/* if-eq v1, v2, :cond_7 */
/* iget v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I */
/* if-ne v2, v1, :cond_7 */
v1 = this.stateDescription;
v2 = this.mLastStateDescription;
/* .line 283 */
v1 = (( java.lang.Object ) v1 ).equals ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
/* if-nez v1, :cond_7 */
/* .line 284 */
v1 = this.stateDescription;
this.mStateDescriptionDeltas = v1;
/* .line 287 */
} // :cond_7
(( java.lang.StringBuilder ) v0 ).toString ( ); // invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
(( android.widget.LinearLayout ) p0 ).setStateDescription ( v0 ); // invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setStateDescription(Ljava/lang/CharSequence;)V
/* .line 288 */
/* iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I */
/* iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLastState:I */
/* .line 289 */
v1 = this.stateDescription;
this.mLastStateDescription = v1;
/* if-nez v0, :cond_8 */
int v0 = 0; // const/4 v0, 0x0
/* .line 292 */
} // :cond_8
v0 = this.expandedAccessibilityClassName;
} // :goto_2
this.mAccessibilityClass = v0;
/* .line 293 */
/* instance-of v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState; */
if ( v0 != null) { // if-eqz v0, :cond_9
/* .line 294 */
/* check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState; */
/* iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z */
/* .line 295 */
/* iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z */
/* if-eq v0, p1, :cond_9 */
/* .line 296 */
/* iput-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z */
} // :cond_9
return;
} // .end method
public Boolean hasOverlappingRendering ( ) {
/* .locals 0 */
int p0 = 0; // const/4 p0, 0x0
} // .end method
public void init ( android.view.View$OnClickListener p0, android.view.View$OnClickListener p1, android.view.View$OnLongClickListener p2 ) {
/* .locals 0 */
/* .line 183 */
(( android.widget.LinearLayout ) p0 ).setOnClickListener ( p1 ); // invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
/* .line 184 */
(( android.widget.LinearLayout ) p0 ).setOnLongClickListener ( p3 ); // invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
return;
} // .end method
public void init ( com.android.systemui.plugins.qs.QSTile p0 ) {
/* .locals 3 */
/* .line 175 */
/* new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView-$$ExternalSyntheticLambda1; */
/* invoke-direct {v0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/plugins/qs/QSTile;)V */
/* new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileBaseView-$$ExternalSyntheticLambda2; */
/* invoke-direct {v1, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView-$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/plugins/qs/QSTile;)V */
/* new-instance v2, Lcom/android/systemui/qs/tileimpl/QSTileBaseView-$$ExternalSyntheticLambda3; */
/* invoke-direct {v2, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView-$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/plugins/qs/QSTile;)V */
(( com.android.systemui.qs.tileimpl.QSTileBaseView ) p0 ).init ( v0, v1, v2 ); // invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
return;
} // .end method
protected android.graphics.drawable.Drawable newTileBackground ( ) {
/* .locals 3 */
int v0 = 1; // const/4 v0, 0x1
/* new-array v0, v0, [I */
/* const v1, 0x101045c */
int v2 = 0; // const/4 v2, 0x0
/* aput v1, v0, v2 */
/* .line 152 */
(( android.widget.LinearLayout ) p0 ).getContext ( ); // invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
(( android.content.Context ) p0 ).obtainStyledAttributes ( v0 ); // invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;
/* .line 153 */
(( android.content.res.TypedArray ) p0 ).getDrawable ( v2 ); // invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
/* .line 154 */
(( android.content.res.TypedArray ) p0 ).recycle ( ); // invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V
} // .end method
public void onInitializeAccessibilityEvent ( android.view.accessibility.AccessibilityEvent p0 ) {
/* .locals 2 */
/* .line 348 */
/* invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V */
/* .line 349 */
v0 = this.mAccessibilityClass;
v0 = android.text.TextUtils .isEmpty ( v0 );
/* if-nez v0, :cond_0 */
/* .line 350 */
v0 = this.mAccessibilityClass;
(( android.view.accessibility.AccessibilityEvent ) p1 ).setClassName ( v0 ); // invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V
/* .line 352 */
} // :cond_0
v0 = (( android.view.accessibility.AccessibilityEvent ) p1 ).getContentChangeTypes ( ); // invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I
/* const/16 v1, 0x40 */
/* if-ne v0, v1, :cond_1 */
v0 = this.mStateDescriptionDeltas;
if ( v0 != null) { // if-eqz v0, :cond_1
/* .line 354 */
(( android.view.accessibility.AccessibilityEvent ) p1 ).getText ( ); // invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;
v0 = this.mStateDescriptionDeltas;
int p1 = 0; // const/4 p1, 0x0
/* .line 355 */
this.mStateDescriptionDeltas = p1;
} // :cond_1
return;
} // .end method
public void onInitializeAccessibilityNodeInfo ( android.view.accessibility.AccessibilityNodeInfo p0 ) {
/* .locals 3 */
/* .line 361 */
/* invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V */
int v0 = 0; // const/4 v0, 0x0
/* .line 363 */
(( android.view.accessibility.AccessibilityNodeInfo ) p1 ).setSelected ( v0 ); // invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V
/* .line 364 */
v0 = this.mAccessibilityClass;
v0 = android.text.TextUtils .isEmpty ( v0 );
/* if-nez v0, :cond_1 */
/* .line 365 */
v0 = this.mAccessibilityClass;
(( android.view.accessibility.AccessibilityNodeInfo ) p1 ).setClassName ( v0 ); // invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V
/* .line 366 */
/* const-class v0, Landroid/widget/Switch; */
(( java.lang.Class ) v0 ).getName ( ); // invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
v1 = this.mAccessibilityClass;
v0 = (( java.lang.String ) v0 ).equals ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
if ( v0 != null) { // if-eqz v0, :cond_1
/* .line 367 */
(( android.widget.LinearLayout ) p0 ).getResources ( ); // invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;
/* .line 368 */
/* iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z */
if ( v1 != null) { // if-eqz v1, :cond_0
} // :cond_0
/* .line 367 */
} // :goto_0
(( android.content.res.Resources ) v0 ).getString ( v1 ); // invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
/* .line 372 */
(( android.view.accessibility.AccessibilityNodeInfo ) p1 ).setText ( v0 ); // invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V
/* .line 373 */
/* iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z */
(( android.view.accessibility.AccessibilityNodeInfo ) p1 ).setChecked ( v0 ); // invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V
int v0 = 1; // const/4 v0, 0x1
/* .line 374 */
(( android.view.accessibility.AccessibilityNodeInfo ) p1 ).setCheckable ( v0 ); // invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V
/* .line 375 */
v0 = (( android.widget.LinearLayout ) p0 ).isLongClickable ( ); // invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLongClickable()Z
if ( v0 != null) { // if-eqz v0, :cond_1
/* .line 376 */
/* new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction; */
v1 = android.view.accessibility.AccessibilityNodeInfo$AccessibilityAction.ACTION_LONG_CLICK;
/* .line 379 */
v1 = (( android.view.accessibility.AccessibilityNodeInfo$AccessibilityAction ) v1 ).getId ( ); // invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I
/* .line 380 */
(( android.widget.LinearLayout ) p0 ).getResources ( ); // invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;
(( android.content.res.Resources ) p0 ).getString ( v2 ); // invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
/* invoke-direct {v0, v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V */
/* .line 376 */
(( android.view.accessibility.AccessibilityNodeInfo ) p1 ).addAction ( v0 ); // invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V
} // :cond_1
return;
} // .end method
protected void onLayout ( Boolean p0, Integer p1, Integer p2, Integer p3, Integer p4 ) {
/* .locals 0 */
/* .line 189 */
/* invoke-super/range {p0 ..p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V */
/* .line 190 */
p1 = this.mRipple;
if ( p1 != null) { // if-eqz p1, :cond_0
/* .line 191 */
(( com.android.systemui.qs.tileimpl.QSTileBaseView ) p0 ).updateRippleSize ( ); // invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->updateRippleSize()V
} // :cond_0
return;
} // .end method
public void onStateChanged ( com.android.systemui.plugins.qs.QSTile$State p0 ) {
/* .locals 1 */
/* .line 213 */
p0 = this.mHandler;
int v0 = 1; // const/4 v0, 0x1
(( android.os.Handler ) p0 ).obtainMessage ( v0, p1 ); // invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
(( android.os.Message ) p0 ).sendToTarget ( ); // invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V
return;
} // .end method
public void setClickable ( Boolean p0 ) {
/* .locals 0 */
/* .line 329 */
/* invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V */
if ( p1 != null) { // if-eqz p1, :cond_0
/* .line 330 */
/* iget-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mShowRippleEffect:Z */
if ( p1 != null) { // if-eqz p1, :cond_0
p1 = this.mRipple;
} // :cond_0
int p1 = 0; // const/4 p1, 0x0
} // :goto_0
(( android.widget.LinearLayout ) p0 ).setBackground ( p1 ); // invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V
return;
} // .end method
public java.lang.String toString ( ) {
/* .locals 4 */
/* .line 389 */
/* new-instance v0, Ljava/lang/StringBuilder; */
(( java.lang.Object ) p0 ).getClass ( ); // invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
(( java.lang.Class ) v1 ).getSimpleName ( ); // invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
/* invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V */
/* const/16 v1, 0x5b */
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
/* .line 390 */
/* new-instance v1, Ljava/lang/StringBuilder; */
/* invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V */
final String v2 = "locInScreen=("; // const-string v2, "locInScreen=("
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
v2 = this.mLocInScreen;
int v3 = 0; // const/4 v3, 0x0
/* aget v2, v2, v3 */
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
final String v2 = ", "; // const-string v2, ", "
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
v2 = this.mLocInScreen;
int v3 = 1; // const/4 v3, 0x1
/* aget v2, v2, v3 */
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
final String v2 = ")"; // const-string v2, ")"
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).toString ( ); // invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 391 */
/* new-instance v1, Ljava/lang/StringBuilder; */
/* invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V */
final String v2 = ", iconView="; // const-string v2, ", iconView="
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
v2 = this.mIcon;
(( android.view.ViewGroup ) v2 ).toString ( ); // invoke-virtual {v2}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).toString ( ); // invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 392 */
/* new-instance v1, Ljava/lang/StringBuilder; */
/* invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V */
final String v2 = ", tileState="; // const-string v2, ", tileState="
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* iget-boolean p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z */
(( java.lang.StringBuilder ) v1 ).append ( p0 ); // invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).toString ( ); // invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
(( java.lang.StringBuilder ) v0 ).append ( p0 ); // invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
final String p0 = "]"; // const-string p0, "]"
/* .line 393 */
(( java.lang.StringBuilder ) v0 ).append ( p0 ); // invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 394 */
(( java.lang.StringBuilder ) v0 ).toString ( ); // invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
} // .end method
public android.view.View updateAccessibilityOrder ( android.view.View p0 ) {
/* .locals 0 */
/* .line 208 */
p1 = (( android.view.View ) p1 ).getId ( ); // invoke-virtual {p1}, Landroid/view/View;->getId()I
(( android.widget.LinearLayout ) p0 ).setAccessibilityTraversalAfter ( p1 ); // invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAccessibilityTraversalAfter(I)V
} // .end method
protected void updateRippleSize ( ) {
/* .locals 5 */
/* .line 167 */
v0 = this.mIconFrame;
v0 = (( android.widget.FrameLayout ) v0 ).getMeasuredWidth ( ); // invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I
/* div-int/lit8 v0, v0, 0x2 */
v1 = this.mIconFrame;
v1 = (( android.widget.FrameLayout ) v1 ).getLeft ( ); // invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLeft()I
/* add-int/2addr v0, v1 */
/* .line 168 */
v1 = this.mIconFrame;
v1 = (( android.widget.FrameLayout ) v1 ).getMeasuredHeight ( ); // invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I
/* div-int/lit8 v1, v1, 0x2 */
v2 = this.mIconFrame;
v2 = (( android.widget.FrameLayout ) v2 ).getTop ( ); // invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I
/* add-int/2addr v1, v2 */
/* .line 169 */
v2 = this.mIcon;
v2 = (( android.view.ViewGroup ) v2 ).getHeight ( ); // invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I
/* int-to-float v2, v2 */
/* const v3, 0x3f59999a # 0.85f */
/* mul-float/2addr v2, v3 */
/* float-to-int v2, v2 */
/* .line 170 */
p0 = this.mRipple;
/* sub-int v3, v0, v2 */
/* sub-int v4, v1, v2 */
/* add-int/2addr v0, v2 */
/* add-int/2addr v1, v2 */
(( android.graphics.drawable.RippleDrawable ) p0 ).setHotspotBounds ( v3, v4, v0, v1 ); // invoke-virtual {p0, v3, v4, v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V
return;
} // .end method
