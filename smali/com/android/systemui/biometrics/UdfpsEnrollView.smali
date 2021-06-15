.class public Lcom/android/systemui/biometrics/UdfpsEnrollView;
.super Lcom/android/systemui/biometrics/UdfpsAnimationView;
.source "UdfpsEnrollView.java"


# instance fields
.field private final mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;

.field private mFingerprintView:Landroid/widget/ImageView;

.field private mProgressBar:Lcom/android/systemui/biometrics/UdfpsProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance p1, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;

    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView;->mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;

    return-void
.end method


# virtual methods
.method public getDrawable()Lcom/android/systemui/biometrics/UdfpsDrawable;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView;->mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;

    return-object p0
.end method

.method public bridge synthetic onExpansionChanged(FZ)V
    .locals 0

    .line 31
    invoke-super {p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->onExpansionChanged(FZ)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 50
    sget v0, Lcom/android/systemui/R$id;->udfps_enroll_animation_fp_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView;->mFingerprintView:Landroid/widget/ImageView;

    .line 51
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView;->mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    sget v0, Lcom/android/systemui/R$id;->progress_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/biometrics/UdfpsProgressBar;

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView;->mProgressBar:Lcom/android/systemui/biometrics/UdfpsProgressBar;

    return-void
.end method

.method setEnrollHelper(Lcom/android/systemui/biometrics/UdfpsEnrollHelper;)V
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView;->mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->setEnrollHelper(Lcom/android/systemui/biometrics/UdfpsEnrollHelper;)V

    return-void
.end method

.method protected updateAlpha()V
    .locals 2

    .line 43
    invoke-super {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->updateAlpha()V

    .line 44
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView;->mProgressBar:Lcom/android/systemui/biometrics/UdfpsProgressBar;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->calculateAlpha()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 45
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView;->mProgressBar:Lcom/android/systemui/biometrics/UdfpsProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->calculateAlpha()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method
