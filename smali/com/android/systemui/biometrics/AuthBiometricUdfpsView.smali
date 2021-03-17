.class public Lcom/android/systemui/biometrics/AuthBiometricUdfpsView;
.super Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;
.source "AuthBiometricUdfpsView.java"


# instance fields
.field private mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/biometrics/AuthBiometricUdfpsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static calculateBottomSpacerHeight(IIILandroid/view/View;Landroid/view/View;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)I
    .locals 1

    .line 61
    iget v0, p5, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorLocationY:I

    sub-int v0, p0, v0

    iget p5, p5, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorRadius:I

    sub-int/2addr v0, p5

    .line 65
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int p4, v0, p4

    .line 66
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p4, p3

    sub-int/2addr p4, p2

    sub-int/2addr p4, p1

    .line 70
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Display height: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", Distance from bottom: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", Bottom margin: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", Navbar height: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", Spacer height: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AuthBiometricUdfpsView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p4
.end method


# virtual methods
.method onMeasureInternal(II)Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;
    .locals 10

    .line 81
    sget v0, Lcom/android/systemui/R$id;->space_below_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    sget v0, Lcom/android/systemui/R$id;->indicator:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 87
    sget v0, Lcom/android/systemui/R$id;->button_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 91
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->biometric_dialog_border_padding:I

    .line 92
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 93
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 94
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 95
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 96
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 97
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 99
    iget-object v7, p0, Lcom/android/systemui/biometrics/AuthBiometricUdfpsView;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-static/range {v2 .. v7}, Lcom/android/systemui/biometrics/AuthBiometricUdfpsView;->calculateBottomSpacerHeight(IIILandroid/view/View;Landroid/view/View;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)I

    move-result v0

    .line 104
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 105
    iget-object v3, p0, Lcom/android/systemui/biometrics/AuthBiometricUdfpsView;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v3, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorRadius:I

    mul-int/lit8 v3, v3, 0x2

    move v4, v1

    :goto_0
    if-ge v1, v2, :cond_6

    .line 107
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 109
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    sget v7, Lcom/android/systemui/R$id;->biometric_icon_frame:I

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v6, v7, :cond_0

    .line 112
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 113
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 111
    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 114
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    sget v7, Lcom/android/systemui/R$id;->biometric_icon:I

    const/high16 v9, -0x80000000

    if-ne v6, v7, :cond_1

    .line 117
    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 118
    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 116
    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 119
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    sget v7, Lcom/android/systemui/R$id;->space_above_icon:I

    if-ne v6, v7, :cond_2

    .line 121
    invoke-static {p1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 122
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 120
    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 124
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    sget v7, Lcom/android/systemui/R$id;->button_bar:I

    if-ne v6, v7, :cond_3

    .line 126
    invoke-static {p1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 127
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 125
    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 129
    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    sget v7, Lcom/android/systemui/R$id;->space_below_icon:I

    if-ne v6, v7, :cond_4

    .line 131
    invoke-static {p1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 132
    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 131
    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 135
    :cond_4
    invoke-static {p1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 136
    invoke-static {p2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 134
    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    .line 139
    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_5

    .line 140
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 144
    :cond_6
    new-instance p0, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;

    invoke-direct {p0, p1, v4}, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method setSensorProps(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricUdfpsView;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    return-void
.end method
