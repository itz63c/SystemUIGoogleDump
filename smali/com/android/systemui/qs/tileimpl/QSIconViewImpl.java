public class com.android.systemui.qs.tileimpl.QSIconViewImpl extends com.android.systemui.plugins.qs.QSIconView {
	 /* .source "QSIconViewImpl.java" */
	 /* # instance fields */
	 private Boolean mAnimationEnabled;
	 protected final android.view.View mIcon;
	 protected final Integer mIconSizePx;
	 private com.android.systemui.plugins.qs.QSTile$Icon mLastIcon;
	 private Integer mState;
	 private Integer mTint;
	 /* # direct methods */
	 public static void $r8$lambda$96c8NZw5xcqGziIv122CYPh9Ra0 ( Float p0, Float p1, Float p2, Float p3, android.widget.ImageView p4, android.animation.ValueAnimator p5 ) { //synthethic
		 /* .locals 0 */
		 /* invoke-static/range {p0 ..p5}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->lambda$animateGrayScale$1(FFFFLandroid/widget/ImageView;Landroid/animation/ValueAnimator;)V */
		 return;
	 } // .end method
	 public static void $r8$lambda$HLhvSGMUP5859HHRkIdnzBxtjuE ( com.android.systemui.qs.tileimpl.QSIconViewImpl p0, android.widget.ImageView p1, com.android.systemui.plugins.qs.QSTile$State p2, Boolean p3 ) { //synthethic
		 /* .locals 0 */
		 /* invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->lambda$setIcon$0(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V */
		 return;
	 } // .end method
	 public com.android.systemui.qs.tileimpl.QSIconViewImpl ( ) {
		 /* .locals 1 */
		 /* .line 53 */
		 /* invoke-direct {p0, p1}, Lcom/android/systemui/plugins/qs/QSIconView;-><init>(Landroid/content/Context;)V */
		 int v0 = 1; // const/4 v0, 0x1
		 /* .line 47 */
		 /* iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z */
		 int v0 = -1; // const/4 v0, -0x1
		 /* .line 48 */
		 /* iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mState:I */
		 /* .line 55 */
		 (( android.content.Context ) p1 ).getResources ( ); // invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
		 /* .line 56 */
		 p1 = 		 (( android.content.res.Resources ) p1 ).getDimensionPixelSize ( v0 ); // invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
		 /* iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconSizePx:I */
		 /* .line 58 */
		 (( com.android.systemui.qs.tileimpl.QSIconViewImpl ) p0 ).createIcon ( ); // invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->createIcon()Landroid/view/View;
		 this.mIcon = p1;
		 /* .line 59 */
		 (( android.view.ViewGroup ) p0 ).addView ( p1 ); // invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
		 return;
	 } // .end method
	 private void animateGrayScale ( Integer p0, Integer p1, android.widget.ImageView p2, java.lang.Runnable p3 ) {
		 /* .locals 7 */
		 /* .line 177 */
		 /* instance-of v0, p3, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView; */
		 if ( v0 != null) { // if-eqz v0, :cond_0
			 /* .line 178 */
			 /* move-object v0, p3 */
			 /* check-cast v0, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView; */
			 /* .line 179 */
			 android.content.res.ColorStateList .valueOf ( p2 );
			 (( com.android.systemui.qs.AlphaControlledSignalTileView$AlphaControlledSlashImageView ) v0 ).setFinalImageTintList ( v1 ); // invoke-virtual {v0, v1}, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView;->setFinalImageTintList(Landroid/content/res/ColorStateList;)V
			 /* .line 181 */
		 } // :cond_0
		 /* iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z */
		 if ( v0 != null) { // if-eqz v0, :cond_1
			 v0 = 			 android.animation.ValueAnimator .areAnimatorsEnabled ( );
			 if ( v0 != null) { // if-eqz v0, :cond_1
				 /* .line 182 */
				 v0 = 				 android.graphics.Color .alpha ( p1 );
				 /* int-to-float v2, v0 */
				 /* .line 183 */
				 v0 = 				 android.graphics.Color .alpha ( p2 );
				 /* int-to-float v3, v0 */
				 /* .line 184 */
				 p1 = 				 android.graphics.Color .red ( p1 );
				 /* int-to-float v4, p1 */
				 /* .line 185 */
				 p1 = 				 android.graphics.Color .red ( p2 );
				 /* int-to-float v5, p1 */
				 int p1 = 2; // const/4 p1, 0x2
				 /* new-array p1, p1, [F */
				 /* .line 187 */
				 /* fill-array-data p1, :array_0 */
				 android.animation.ValueAnimator .ofFloat ( p1 );
				 /* const-wide/16 v0, 0x15e */
				 /* .line 188 */
				 (( android.animation.ValueAnimator ) p1 ).setDuration ( v0, v1 ); // invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;
				 /* .line 189 */
				 /* new-instance p2, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl-$$ExternalSyntheticLambda0; */
				 /* move-object v1, p2 */
				 /* move-object v6, p3 */
				 /* invoke-direct/range {v1 ..v6}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl-$$ExternalSyntheticLambda0;-><init>(FFFFLandroid/widget/ImageView;)V */
				 (( android.animation.ValueAnimator ) p1 ).addUpdateListener ( p2 ); // invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
				 /* .line 196 */
				 /* new-instance p2, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$2; */
				 /* invoke-direct {p2, p0, p4}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$2;-><init>(Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;Ljava/lang/Runnable;)V */
				 (( android.animation.ValueAnimator ) p1 ).addListener ( p2 ); // invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V
				 /* .line 202 */
				 (( android.animation.ValueAnimator ) p1 ).start ( ); // invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V
				 /* .line 204 */
			 } // :cond_1
			 com.android.systemui.qs.tileimpl.QSIconViewImpl .setTint ( p3,p2 );
			 /* .line 205 */
		 } // :goto_0
		 return;
		 /* :array_0 */
		 /* .array-data 4 */
		 /* 0x0 */
		 /* 0x3f800000 # 1.0f */
	 } // .end array-data
} // .end method
private static void lambda$animateGrayScale$1 ( Float p0, Float p1, Float p2, Float p3, android.widget.ImageView p4, android.animation.ValueAnimator p5 ) { //synthethic
	 /* .locals 0 */
	 /* .line 190 */
	 p5 = 	 (( android.animation.ValueAnimator ) p5 ).getAnimatedFraction ( ); // invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F
	 /* sub-float/2addr p1, p0 */
	 /* mul-float/2addr p1, p5 */
	 /* add-float/2addr p0, p1 */
	 /* float-to-int p0, p0 */
	 /* sub-float/2addr p3, p2 */
	 /* mul-float/2addr p3, p5 */
	 /* add-float/2addr p2, p3 */
	 /* float-to-int p1, p2 */
	 /* .line 194 */
	 p0 = 	 android.graphics.Color .argb ( p0,p1,p1,p1 );
	 com.android.systemui.qs.tileimpl.QSIconViewImpl .setTint ( p4,p0 );
	 return;
} // .end method
private void lambda$setIcon$0 ( android.widget.ImageView p0, com.android.systemui.plugins.qs.QSTile$State p1, Boolean p2 ) { //synthethic
	 /* .locals 0 */
	 /* .line 154 */
	 (( com.android.systemui.qs.tileimpl.QSIconViewImpl ) p0 ).updateIcon ( p1, p2, p3 ); // invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
	 return;
} // .end method
public static void setTint ( android.widget.ImageView p0, Integer p1 ) {
	 /* .locals 0 */
	 /* .line 210 */
	 android.content.res.ColorStateList .valueOf ( p1 );
	 (( android.widget.ImageView ) p0 ).setImageTintList ( p1 ); // invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V
	 return;
} // .end method
private Boolean shouldAnimate ( android.widget.ImageView p0 ) {
	 /* .locals 0 */
	 /* .line 141 */
	 /* iget-boolean p0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z */
	 if ( p0 != null) { // if-eqz p0, :cond_0
		 p0 = 		 (( android.widget.ImageView ) p1 ).isShown ( ); // invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z
		 if ( p0 != null) { // if-eqz p0, :cond_0
			 (( android.widget.ImageView ) p1 ).getDrawable ( ); // invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
			 if ( p0 != null) { // if-eqz p0, :cond_0
				 int p0 = 1; // const/4 p0, 0x1
			 } // :cond_0
			 int p0 = 0; // const/4 p0, 0x0
		 } // :goto_0
	 } // .end method
	 /* # virtual methods */
	 protected android.view.View createIcon ( ) {
		 /* .locals 1 */
		 /* .line 219 */
		 /* new-instance v0, Lcom/android/systemui/qs/tileimpl/SlashImageView; */
		 p0 = this.mContext;
		 /* invoke-direct {v0, p0}, Lcom/android/systemui/qs/tileimpl/SlashImageView;-><init>(Landroid/content/Context;)V */
		 /* const p0, 0x1020006 */
		 /* .line 220 */
		 (( android.widget.ImageView ) v0 ).setId ( p0 ); // invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setId(I)V
		 /* .line 221 */
		 p0 = android.widget.ImageView$ScaleType.FIT_CENTER;
		 (( android.widget.ImageView ) v0 ).setScaleType ( p0 ); // invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
	 } // .end method
	 public void disableAnimation ( ) {
		 /* .locals 1 */
		 int v0 = 0; // const/4 v0, 0x0
		 /* .line 63 */
		 /* iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mAnimationEnabled:Z */
		 return;
	 } // .end method
	 protected final Integer exactly ( Integer p0 ) {
		 /* .locals 0 */
		 /* const/high16 p0, 0x40000000 # 2.0f */
		 /* .line 226 */
		 p0 = 		 android.view.View$MeasureSpec .makeMeasureSpec ( p1,p0 );
	 } // .end method
	 protected Integer getColor ( Integer p0 ) {
		 /* .locals 0 */
		 /* .line 172 */
		 (( android.view.ViewGroup ) p0 ).getContext ( ); // invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
		 p0 = 		 com.android.systemui.qs.tileimpl.QSTileImpl .getColorForState ( p0,p1 );
	 } // .end method
	 protected Integer getIconMeasureMode ( ) {
		 /* .locals 0 */
		 /* const/high16 p0, 0x40000000 # 2.0f */
	 } // .end method
	 public android.view.View getIconView ( ) {
		 /* .locals 0 */
		 /* .line 67 */
		 p0 = this.mIcon;
	 } // .end method
	 protected final void layout ( android.view.View p0, Integer p1, Integer p2 ) {
		 /* .locals 1 */
		 /* .line 230 */
		 p0 = 		 (( android.view.View ) p1 ).getMeasuredWidth ( ); // invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I
		 /* add-int/2addr p0, p2 */
		 v0 = 		 (( android.view.View ) p1 ).getMeasuredHeight ( ); // invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I
		 /* add-int/2addr v0, p3 */
		 (( android.view.View ) p1 ).layout ( p2, p3, p0, v0 ); // invoke-virtual {p1, p2, p3, p0, v0}, Landroid/view/View;->layout(IIII)V
		 return;
	 } // .end method
	 protected void onLayout ( Boolean p0, Integer p1, Integer p2, Integer p3, Integer p4 ) {
		 /* .locals 0 */
		 /* .line 90 */
		 p1 = 		 (( android.view.ViewGroup ) p0 ).getMeasuredWidth ( ); // invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I
		 /* .line 92 */
		 p2 = this.mIcon;
		 p2 = 		 (( android.view.View ) p2 ).getMeasuredWidth ( ); // invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I
		 /* sub-int/2addr p1, p2 */
		 /* div-int/lit8 p1, p1, 0x2 */
		 /* .line 93 */
		 p2 = this.mIcon;
		 int p3 = 0; // const/4 p3, 0x0
		 (( com.android.systemui.qs.tileimpl.QSIconViewImpl ) p0 ).layout ( p2, p1, p3 ); // invoke-virtual {p0, p2, p1, p3}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->layout(Landroid/view/View;II)V
		 return;
	 } // .end method
	 protected void onMeasure ( Integer p0, Integer p1 ) {
		 /* .locals 2 */
		 /* .line 72 */
		 p1 = 		 android.view.View$MeasureSpec .getSize ( p1 );
		 /* .line 73 */
		 /* iget p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconSizePx:I */
		 p2 = 		 (( com.android.systemui.qs.tileimpl.QSIconViewImpl ) p0 ).exactly ( p2 ); // invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->exactly(I)I
		 /* .line 74 */
		 v0 = this.mIcon;
		 v1 = 		 (( com.android.systemui.qs.tileimpl.QSIconViewImpl ) p0 ).getIconMeasureMode ( ); // invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getIconMeasureMode()I
		 v1 = 		 android.view.View$MeasureSpec .makeMeasureSpec ( p1,v1 );
		 (( android.view.View ) v0 ).measure ( v1, p2 ); // invoke-virtual {v0, v1, p2}, Landroid/view/View;->measure(II)V
		 /* .line 75 */
		 p2 = this.mIcon;
		 p2 = 		 (( android.view.View ) p2 ).getMeasuredHeight ( ); // invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I
		 (( android.view.ViewGroup ) p0 ).setMeasuredDimension ( p1, p2 ); // invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V
		 return;
	 } // .end method
	 protected void setIcon ( android.widget.ImageView p0, com.android.systemui.plugins.qs.QSTile$State p1, Boolean p2 ) {
		 /* .locals 3 */
		 /* .line 145 */
		 /* iget-boolean v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z */
		 if ( v0 != null) { // if-eqz v0, :cond_0
			 /* .line 146 */
			 (( android.view.ViewGroup ) p0 ).getContext ( ); // invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
			 v0 = 			 (( android.content.Context ) v0 ).getColor ( v1 ); // invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I
			 (( android.widget.ImageView ) p1 ).setColorFilter ( v0 ); // invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V
			 /* .line 148 */
		 } // :cond_0
		 (( android.widget.ImageView ) p1 ).clearColorFilter ( ); // invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V
		 /* .line 150 */
	 } // :goto_0
	 /* iget v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I */
	 /* iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mState:I */
	 /* if-eq v0, v1, :cond_3 */
	 /* .line 151 */
	 v0 = 	 (( com.android.systemui.qs.tileimpl.QSIconViewImpl ) p0 ).getColor ( v0 ); // invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getColor(I)I
	 /* .line 152 */
	 /* iget v1, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I */
	 /* iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mState:I */
	 /* .line 153 */
	 /* iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTint:I */
	 if ( v1 != null) { // if-eqz v1, :cond_1
		 if ( p3 != null) { // if-eqz p3, :cond_1
			 v1 = 			 /* invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->shouldAnimate(Landroid/widget/ImageView;)Z */
			 if ( v1 != null) { // if-eqz v1, :cond_1
				 /* .line 154 */
				 /* iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTint:I */
				 /* new-instance v2, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl-$$ExternalSyntheticLambda1; */
				 /* invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V */
				 /* invoke-direct {p0, v1, v0, p1, v2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->animateGrayScale(IILandroid/widget/ImageView;Ljava/lang/Runnable;)V */
				 /* .line 155 */
				 /* iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTint:I */
				 /* .line 157 */
			 } // :cond_1
			 /* instance-of v1, p1, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView; */
			 if ( v1 != null) { // if-eqz v1, :cond_2
				 /* .line 158 */
				 /* move-object v1, p1 */
				 /* check-cast v1, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView; */
				 /* .line 159 */
				 android.content.res.ColorStateList .valueOf ( v0 );
				 (( com.android.systemui.qs.AlphaControlledSignalTileView$AlphaControlledSlashImageView ) v1 ).setFinalImageTintList ( v2 ); // invoke-virtual {v1, v2}, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView;->setFinalImageTintList(Landroid/content/res/ColorStateList;)V
				 /* .line 161 */
			 } // :cond_2
			 com.android.systemui.qs.tileimpl.QSIconViewImpl .setTint ( p1,v0 );
			 /* .line 163 */
		 } // :goto_1
		 /* iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTint:I */
		 /* .line 164 */
		 (( com.android.systemui.qs.tileimpl.QSIconViewImpl ) p0 ).updateIcon ( p1, p2, p3 ); // invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
		 /* .line 167 */
	 } // :cond_3
	 (( com.android.systemui.qs.tileimpl.QSIconViewImpl ) p0 ).updateIcon ( p1, p2, p3 ); // invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
} // :goto_2
return;
} // .end method
public void setIcon ( com.android.systemui.plugins.qs.QSTile$State p0, Boolean p1 ) {
/* .locals 1 */
/* .line 97 */
v0 = this.mIcon;
/* check-cast v0, Landroid/widget/ImageView; */
(( com.android.systemui.qs.tileimpl.QSIconViewImpl ) p0 ).setIcon ( v0, p1, p2 ); // invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
return;
} // .end method
public java.lang.String toString ( ) {
/* .locals 3 */
/* .line 80 */
/* new-instance v0, Ljava/lang/StringBuilder; */
(( java.lang.Object ) p0 ).getClass ( ); // invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
(( java.lang.Class ) v1 ).getSimpleName ( ); // invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
/* invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V */
/* const/16 v1, 0x5b */
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
/* .line 81 */
/* new-instance v1, Ljava/lang/StringBuilder; */
/* invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V */
final String v2 = "state="; // const-string v2, "state="
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* iget v2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mState:I */
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).toString ( ); // invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 82 */
/* new-instance v1, Ljava/lang/StringBuilder; */
/* invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V */
final String v2 = ", tint="; // const-string v2, ", tint="
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* iget v2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mTint:I */
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).toString ( ); // invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 83 */
v1 = this.mLastIcon;
if ( v1 != null) { // if-eqz v1, :cond_0
	 /* new-instance v1, Ljava/lang/StringBuilder; */
	 /* invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V */
	 final String v2 = ", lastIcon="; // const-string v2, ", lastIcon="
	 (( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
	 p0 = this.mLastIcon;
	 (( com.android.systemui.plugins.qs.QSTile$Icon ) p0 ).toString ( ); // invoke-virtual {p0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->toString()Ljava/lang/String;
	 (( java.lang.StringBuilder ) v1 ).append ( p0 ); // invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
	 (( java.lang.StringBuilder ) v1 ).toString ( ); // invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
	 (( java.lang.StringBuilder ) v0 ).append ( p0 ); // invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
} // :cond_0
final String p0 = "]"; // const-string p0, "]"
/* .line 84 */
(( java.lang.StringBuilder ) v0 ).append ( p0 ); // invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 85 */
(( java.lang.StringBuilder ) v0 ).toString ( ); // invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
} // .end method
protected void updateIcon ( android.widget.ImageView p0, com.android.systemui.plugins.qs.QSTile$State p1, Boolean p2 ) {
/* .locals 7 */
/* .line 101 */
v0 = this.iconSupplier;
if ( v0 != null) { // if-eqz v0, :cond_0
	 /* check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$Icon; */
} // :cond_0
v0 = this.icon;
/* .line 102 */
} // :goto_0
(( android.widget.ImageView ) p1 ).getTag ( v1 ); // invoke-virtual {p1, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;
v2 = java.util.Objects .equals ( v0,v2 );
if ( v2 != null) { // if-eqz v2, :cond_1
v2 = this.slash;
/* .line 103 */
(( android.widget.ImageView ) p1 ).getTag ( v3 ); // invoke-virtual {p1, v3}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;
v2 = java.util.Objects .equals ( v2,v3 );
/* if-nez v2, :cond_8 */
} // :cond_1
int v2 = 0; // const/4 v2, 0x0
if ( p3 != null) { // if-eqz p3, :cond_2
/* .line 104 */
p3 = /* invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->shouldAnimate(Landroid/widget/ImageView;)Z */
if ( p3 != null) { // if-eqz p3, :cond_2
	 int p3 = 1; // const/4 p3, 0x1
} // :cond_2
/* move p3, v2 */
/* .line 105 */
} // :goto_1
this.mLastIcon = v0;
int v3 = 0; // const/4 v3, 0x0
if ( v0 != null) { // if-eqz v0, :cond_4
if ( p3 != null) { // if-eqz p3, :cond_3
	 /* .line 107 */
	 v4 = this.mContext;
	 (( com.android.systemui.plugins.qs.QSTile$Icon ) v0 ).getDrawable ( v4 ); // invoke-virtual {v0, v4}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
	 /* .line 108 */
} // :cond_3
v4 = this.mContext;
(( com.android.systemui.plugins.qs.QSTile$Icon ) v0 ).getInvisibleDrawable ( v4 ); // invoke-virtual {v0, v4}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getInvisibleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
} // :cond_4
/* move-object v4, v3 */
} // :goto_2
if ( v0 != null) { // if-eqz v0, :cond_5
/* .line 109 */
v5 = (( com.android.systemui.plugins.qs.QSTile$Icon ) v0 ).getPadding ( ); // invoke-virtual {v0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getPadding()I
} // :cond_5
/* move v5, v2 */
} // :goto_3
if ( v4 != null) { // if-eqz v4, :cond_6
/* .line 111 */
(( android.graphics.drawable.Drawable ) v4 ).setAutoMirrored ( v2 ); // invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V
/* .line 112 */
v6 = (( android.view.ViewGroup ) p0 ).getLayoutDirection ( ); // invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I
(( android.graphics.drawable.Drawable ) v4 ).setLayoutDirection ( v6 ); // invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z
/* .line 115 */
} // :cond_6
/* instance-of v6, p1, Lcom/android/systemui/qs/tileimpl/SlashImageView; */
if ( v6 != null) { // if-eqz v6, :cond_7
/* .line 116 */
/* move-object v6, p1 */
/* check-cast v6, Lcom/android/systemui/qs/tileimpl/SlashImageView; */
(( com.android.systemui.qs.tileimpl.SlashImageView ) v6 ).setAnimationEnabled ( p3 ); // invoke-virtual {v6, p3}, Lcom/android/systemui/qs/tileimpl/SlashImageView;->setAnimationEnabled(Z)V
/* .line 117 */
(( com.android.systemui.qs.tileimpl.SlashImageView ) v6 ).setState ( v3, v4 ); // invoke-virtual {v6, v3, v4}, Lcom/android/systemui/qs/tileimpl/SlashImageView;->setState(Lcom/android/systemui/plugins/qs/QSTile$SlashState;Landroid/graphics/drawable/Drawable;)V
/* .line 119 */
} // :cond_7
(( android.widget.ImageView ) p1 ).setImageDrawable ( v4 ); // invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
/* .line 122 */
} // :goto_4
(( android.widget.ImageView ) p1 ).setTag ( v1, v0 ); // invoke-virtual {p1, v1, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V
/* .line 123 */
v0 = this.slash;
(( android.widget.ImageView ) p1 ).setTag ( p3, v0 ); // invoke-virtual {p1, p3, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V
/* .line 124 */
(( android.widget.ImageView ) p1 ).setPadding ( v2, v5, v2, v5 ); // invoke-virtual {p1, v2, v5, v2, v5}, Landroid/widget/ImageView;->setPadding(IIII)V
/* .line 125 */
/* instance-of p1, v4, Landroid/graphics/drawable/Animatable2; */
if ( p1 != null) { // if-eqz p1, :cond_8
/* .line 126 */
/* check-cast v4, Landroid/graphics/drawable/Animatable2; */
/* .line 127 */
/* .line 128 */
/* iget-boolean p1, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z */
if ( p1 != null) { // if-eqz p1, :cond_8
/* .line 129 */
/* new-instance p1, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$1; */
/* invoke-direct {p1, p0, v4}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$1;-><init>(Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;Landroid/graphics/drawable/Animatable2;)V */
} // :cond_8
return;
} // .end method
