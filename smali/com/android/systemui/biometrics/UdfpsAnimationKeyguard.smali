.class public Lcom/android/systemui/biometrics/UdfpsAnimationKeyguard;
.super Lcom/android/systemui/biometrics/UdfpsAnimation;
.source "UdfpsAnimationKeyguard.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeReceiver;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field private mBurnInOffsetX:F

.field private mBurnInOffsetY:F

.field private final mContext:Landroid/content/Context;

.field private mInterpolatedDarkAmount:F

.field private final mMaxBurnInOffsetX:I

.field private final mMaxBurnInOffsetY:I

.field private final mParent:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .locals 1

    .line 57
    invoke-direct {p0, p2}, Lcom/android/systemui/biometrics/UdfpsAnimation;-><init>(Landroid/content/Context;)V

    .line 58
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationKeyguard;->mParent:Landroid/view/View;

    .line 59
    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsAnimationKeyguard;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->udfps_burn_in_offset_x:I

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationKeyguard;->mMaxBurnInOffsetX:I

    .line 63
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->udfps_burn_in_offset_y:I

    .line 64
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationKeyguard;->mMaxBurnInOffsetY:I

    .line 66
    invoke-interface {p3, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method

.method private updateAodPositionAndColor()V
    .locals 4

    .line 70
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationKeyguard;->mMaxBurnInOffsetX:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    .line 71
    invoke-static {v0, v1}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInOffset(IZ)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationKeyguard;->mMaxBurnInOffsetX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationKeyguard;->mInterpolatedDarkAmount:F

    const/4 v2, 0x0

    .line 70
    invoke-static {v2, v0, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationKeyguard;->mBurnInOffsetX:F

    .line 74
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationKeyguard;->mMaxBurnInOffsetY:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    .line 75
    invoke-static {v0, v1}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInOffset(IZ)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationKeyguard;->mMaxBurnInOffsetY:I

    int-to-float v1, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationKeyguard;->mInterpolatedDarkAmount:F

    .line 74
    invoke-static {v2, v0, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationKeyguard;->mBurnInOffsetY:F

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationKeyguard;->updateColor()V

    .line 79
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationKeyguard;->mParent:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method


# virtual methods
.method public dozeTimeTick()V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationKeyguard;->updateAodPositionAndColor()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 96
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationKeyguard;->mBurnInOffsetX:F

    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationKeyguard;->mBurnInOffsetY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 97
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsAnimation;->mFingerprintDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onDozeAmountChanged(FF)V
    .locals 0

    .line 89
    iput p2, p0, Lcom/android/systemui/biometrics/UdfpsAnimationKeyguard;->mInterpolatedDarkAmount:F

    .line 90
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationKeyguard;->updateAodPositionAndColor()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public updateColor()V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationKeyguard;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    .line 116
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsAnimation;->mFingerprintDrawable:Landroid/graphics/drawable/Drawable;

    iget p0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationKeyguard;->mInterpolatedDarkAmount:F

    const/4 v2, -0x1

    invoke-static {v0, v2, p0}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method
