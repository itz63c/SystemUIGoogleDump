public class com.android.systemui.qs.tileimpl.SlashImageView extends android.widget.ImageView {
	 /* .source "SlashImageView.java" */
	 /* # instance fields */
	 private Boolean mAnimationEnabled;
	 protected com.android.systemui.qs.SlashDrawable mSlash;
	 /* .annotation build Lcom/android/internal/annotations/VisibleForTesting; */
} // .end annotation
} // .end field
/* # direct methods */
public com.android.systemui.qs.tileimpl.SlashImageView ( ) {
/* .locals 0 */
/* .line 35 */
/* invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V */
int p1 = 1; // const/4 p1, 0x1
/* .line 32 */
/* iput-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/SlashImageView;->mAnimationEnabled:Z */
return;
} // .end method
private void setSlashState ( com.android.systemui.plugins.qs.QSTile$SlashState p0 ) {
/* .locals 2 */
/* .line 81 */
(( com.android.systemui.qs.tileimpl.SlashImageView ) p0 ).ensureSlashDrawable ( ); // invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/SlashImageView;->ensureSlashDrawable()V
/* .line 82 */
v0 = this.mSlash;
/* iget v1, p1, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->rotation:F */
(( com.android.systemui.qs.SlashDrawable ) v0 ).setRotation ( v1 ); // invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SlashDrawable;->setRotation(F)V
/* .line 83 */
p0 = this.mSlash;
/* iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z */
(( com.android.systemui.qs.SlashDrawable ) p0 ).setSlashed ( p1 ); // invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SlashDrawable;->setSlashed(Z)V
return;
} // .end method
/* # virtual methods */
protected void ensureSlashDrawable ( ) {
/* .locals 2 */
/* .line 47 */
v0 = this.mSlash;
/* if-nez v0, :cond_0 */
/* .line 48 */
/* new-instance v0, Lcom/android/systemui/qs/SlashDrawable; */
(( android.widget.ImageView ) p0 ).getDrawable ( ); // invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
/* invoke-direct {v0, v1}, Lcom/android/systemui/qs/SlashDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V */
this.mSlash = v0;
/* .line 49 */
/* iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/SlashImageView;->mAnimationEnabled:Z */
(( com.android.systemui.qs.SlashDrawable ) v0 ).setAnimationEnabled ( v1 ); // invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SlashDrawable;->setAnimationEnabled(Z)V
/* .line 50 */
v0 = this.mSlash;
/* invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V */
} // :cond_0
return;
} // .end method
public Boolean getAnimationEnabled ( ) {
/* .locals 0 */
/* .line 77 */
/* iget-boolean p0, p0, Lcom/android/systemui/qs/tileimpl/SlashImageView;->mAnimationEnabled:Z */
} // .end method
protected com.android.systemui.qs.SlashDrawable getSlash ( ) {
/* .locals 0 */
/* .line 39 */
p0 = this.mSlash;
} // .end method
public void setAnimationEnabled ( Boolean p0 ) {
/* .locals 0 */
/* .line 73 */
/* iput-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/SlashImageView;->mAnimationEnabled:Z */
return;
} // .end method
public void setImageDrawable ( android.graphics.drawable.Drawable p0 ) {
/* .locals 2 */
/* if-nez p1, :cond_0 */
int p1 = 0; // const/4 p1, 0x0
/* .line 57 */
this.mSlash = p1;
/* .line 58 */
/* invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V */
/* .line 59 */
} // :cond_0
v0 = this.mSlash;
/* if-nez v0, :cond_1 */
/* .line 60 */
v0 = (( android.graphics.drawable.Drawable ) p1 ).getLevel ( ); // invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLevel()I
(( android.widget.ImageView ) p0 ).setImageLevel ( v0 ); // invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageLevel(I)V
/* .line 61 */
/* invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V */
/* .line 63 */
} // :cond_1
/* iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/SlashImageView;->mAnimationEnabled:Z */
(( com.android.systemui.qs.SlashDrawable ) v0 ).setAnimationEnabled ( v1 ); // invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SlashDrawable;->setAnimationEnabled(Z)V
/* .line 64 */
p0 = this.mSlash;
(( com.android.systemui.qs.SlashDrawable ) p0 ).setDrawable ( p1 ); // invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SlashDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V
} // :goto_0
return;
} // .end method
protected void setImageViewDrawable ( com.android.systemui.qs.SlashDrawable p0 ) {
/* .locals 0 */
/* .line 69 */
/* invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V */
return;
} // .end method
protected void setSlash ( com.android.systemui.qs.SlashDrawable p0 ) {
/* .locals 0 */
/* .line 43 */
this.mSlash = p1;
return;
} // .end method
public void setState ( com.android.systemui.plugins.qs.QSTile$SlashState p0, android.graphics.drawable.Drawable p1 ) {
/* .locals 0 */
if ( p1 != null) { // if-eqz p1, :cond_0
/* .line 88 */
(( com.android.systemui.qs.tileimpl.SlashImageView ) p0 ).setImageDrawable ( p2 ); // invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tileimpl/SlashImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
/* .line 89 */
/* invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/SlashImageView;->setSlashState(Lcom/android/systemui/plugins/qs/QSTile$SlashState;)V */
} // :cond_0
int p1 = 0; // const/4 p1, 0x0
/* .line 91 */
this.mSlash = p1;
/* .line 92 */
(( com.android.systemui.qs.tileimpl.SlashImageView ) p0 ).setImageDrawable ( p2 ); // invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tileimpl/SlashImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
} // :goto_0
return;
} // .end method
