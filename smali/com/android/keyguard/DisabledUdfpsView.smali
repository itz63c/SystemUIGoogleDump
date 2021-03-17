.class public Lcom/android/keyguard/DisabledUdfpsView;
.super Landroid/widget/Button;
.source "DisabledUdfpsView.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

.field private final mSensorRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-object p1, p0, Lcom/android/keyguard/DisabledUdfpsView;->mContext:Landroid/content/Context;

    .line 42
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/DisabledUdfpsView;->mSensorRect:Landroid/graphics/RectF;

    return-void
.end method

.method private updateSensorRect(II)V
    .locals 6

    .line 52
    iget-object v0, p0, Lcom/android/keyguard/DisabledUdfpsView;->mSensorRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/keyguard/DisabledUdfpsView;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v2, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorLocationX:I

    iget v3, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorRadius:I

    sub-int v4, v2, v3

    int-to-float v4, v4

    iget v1, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorLocationY:I

    sub-int v5, v1, v3

    int-to-float v5, v5

    add-int/2addr v2, v3

    int-to-float v2, v2

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v0, v4, v5, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 58
    iget-object v0, p0, Lcom/android/keyguard/DisabledUdfpsView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/DisabledUdfpsView;->mSensorRect:Landroid/graphics/RectF;

    int-to-float p2, p2

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v0, p2, v0

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, v2

    iget v2, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 60
    :cond_1
    iget-object p2, p0, Lcom/android/keyguard/DisabledUdfpsView;->mSensorRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->top:F

    int-to-float p1, p1

    iget v1, p2, Landroid/graphics/RectF;->right:F

    sub-float v1, p1, v1

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    iget v3, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v3

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 71
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/DisabledUdfpsView;->mSensorRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setX(F)V

    .line 72
    iget-object p1, p0, Lcom/android/keyguard/DisabledUdfpsView;->mSensorRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setY(F)V

    .line 73
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object p2, p0, Lcom/android/keyguard/DisabledUdfpsView;->mSensorRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p2

    float-to-int p2, v1

    invoke-direct {p1, v0, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 80
    invoke-super/range {p0 .. p5}, Landroid/widget/Button;->onLayout(ZIIII)V

    .line 85
    invoke-virtual {p0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 86
    invoke-virtual {p0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 87
    invoke-direct {p0, p2, p1}, Lcom/android/keyguard/DisabledUdfpsView;->updateSensorRect(II)V

    return-void
.end method

.method public setSensorProperties(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/keyguard/DisabledUdfpsView;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    return-void
.end method
