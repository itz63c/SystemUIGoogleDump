.class public Lcom/android/systemui/biometrics/UdfpsEnrollHelper;
.super Ljava/lang/Object;
.source "UdfpsEnrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/biometrics/UdfpsEnrollHelper$Listener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEnrollReason:I

.field private final mGuidedEnrollmentPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field mListener:Lcom/android/systemui/biometrics/UdfpsEnrollHelper$Listener;

.field private mLocationsEnrolled:I

.field private mRemainingSteps:I

.field private mTotalSteps:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 58
    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mTotalSteps:I

    .line 59
    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mRemainingSteps:I

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mLocationsEnrolled:I

    .line 68
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mContext:Landroid/content/Context;

    .line 69
    iput p2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mEnrollReason:I

    .line 70
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mGuidedEnrollmentPoints:Ljava/util/List;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v1, 0x5

    const/high16 v2, 0x3f800000    # 1.0f

    .line 73
    invoke-static {v1, v2, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "com.android.systemui.biometrics.UdfpsNewCoords"

    const/4 v2, -0x2

    invoke-static {p1, v1, v0, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 p1, 0x0

    const-string v1, "UdfpsEnrollHelper"

    if-eqz v0, :cond_2

    .line 78
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "Using new coordinates"

    .line 79
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v0, Landroid/graphics/PointF;

    const v1, -0x41e66666    # -0.15f

    mul-float/2addr v1, p0

    const v2, -0x407d70a4    # -1.02f

    mul-float/2addr v2, p0

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v0, Landroid/graphics/PointF;

    const v2, 0x3f828f5c    # 1.02f

    mul-float/2addr v2, p0

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v0, Landroid/graphics/PointF;

    const v1, 0x3e947ae1    # 0.29f

    mul-float/2addr v1, p0

    mul-float/2addr p1, p0

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v0, Landroid/graphics/PointF;

    const v1, 0x400ae148    # 2.17f

    mul-float/2addr v1, p0

    const v2, -0x3fe9999a    # -2.35f

    mul-float/2addr v2, p0

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v0, Landroid/graphics/PointF;

    const v2, 0x3f88f5c3    # 1.07f

    mul-float/2addr v2, p0

    const v3, -0x3f828f5c    # -3.96f

    mul-float/2addr v3, p0

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v0, Landroid/graphics/PointF;

    const v3, -0x41428f5c    # -0.37f

    mul-float/2addr v3, p0

    const v4, -0x3f76147b    # -4.31f

    mul-float/2addr v4, p0

    invoke-direct {v0, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v0, Landroid/graphics/PointF;

    const v4, -0x4027ae14    # -1.69f

    mul-float/2addr v4, p0

    const v5, -0x3fad70a4    # -3.29f

    mul-float/2addr v5, p0

    invoke-direct {v0, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v0, Landroid/graphics/PointF;

    const v5, -0x3fe147ae    # -2.48f

    mul-float/2addr v5, p0

    const v6, -0x40628f5c    # -1.23f

    mul-float/2addr v6, p0

    invoke-direct {v0, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v0, Landroid/graphics/PointF;

    const v6, 0x3f9d70a4    # 1.23f

    mul-float/2addr v6, p0

    invoke-direct {v0, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v0, Landroid/graphics/PointF;

    const v5, 0x40528f5c    # 3.29f

    mul-float/2addr v5, p0

    invoke-direct {v0, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v0, Landroid/graphics/PointF;

    const v4, 0x4089eb85    # 4.31f

    mul-float/2addr v4, p0

    invoke-direct {v0, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v0, Landroid/graphics/PointF;

    const v3, 0x407d70a4    # 3.96f

    mul-float/2addr v3, p0

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v0, Landroid/graphics/PointF;

    const v2, 0x40166666    # 2.35f

    mul-float/2addr v2, p0

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v0, Landroid/graphics/PointF;

    const v1, 0x40251eb8    # 2.58f

    mul-float/2addr p0, v1

    invoke-direct {v0, p0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    const-string v0, "Using old coordinates"

    .line 95
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p0

    mul-float/2addr p1, p0

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance p1, Landroid/graphics/PointF;

    const v0, 0x3f5eb852    # 0.87f

    mul-float/2addr v0, p0

    const v1, -0x3fd33333    # -2.7f

    mul-float/2addr v1, p0

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance p1, Landroid/graphics/PointF;

    const v0, -0x4019999a    # -1.8f

    mul-float/2addr v0, p0

    const v1, -0x405851ec    # -1.31f

    mul-float/2addr v1, p0

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance p1, Landroid/graphics/PointF;

    const v1, 0x3fa7ae14    # 1.31f

    mul-float/2addr v1, p0

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance p1, Landroid/graphics/PointF;

    const v0, 0x3f6147ae    # 0.88f

    mul-float/2addr v0, p0

    const v1, 0x402ccccd    # 2.7f

    mul-float/2addr v1, p0

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance p1, Landroid/graphics/PointF;

    const v0, 0x407c28f6    # 3.94f

    mul-float/2addr v0, p0

    const v1, -0x407851ec    # -1.06f

    mul-float/2addr v1, p0

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance p1, Landroid/graphics/PointF;

    const v0, 0x4039999a    # 2.9f

    mul-float/2addr v0, p0

    const v1, -0x3f7b851f    # -4.14f

    mul-float/2addr v1, p0

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance p1, Landroid/graphics/PointF;

    const v0, -0x40fae148    # -0.52f

    mul-float/2addr v0, p0

    const v1, -0x3f41999a    # -5.95f

    mul-float/2addr v1, p0

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance p1, Landroid/graphics/PointF;

    const v0, -0x3faae148    # -3.33f

    mul-float/2addr v0, p0

    invoke-direct {p1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance p1, Landroid/graphics/PointF;

    const v0, -0x3f80a3d7    # -3.99f

    mul-float/2addr v0, p0

    const v1, -0x414ccccd    # -0.35f

    mul-float/2addr v1, p0

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance p1, Landroid/graphics/PointF;

    const v0, -0x3f9851ec    # -3.62f

    mul-float/2addr v0, p0

    const v1, 0x40228f5c    # 2.54f

    mul-float/2addr v1, p0

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance p1, Landroid/graphics/PointF;

    const v0, -0x404147ae    # -1.49f

    mul-float/2addr v0, p0

    const v1, 0x40b23d71    # 5.57f

    mul-float/2addr v1, p0

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance p1, Landroid/graphics/PointF;

    const v0, 0x40128f5c    # 2.29f

    mul-float/2addr v0, p0

    const v1, 0x409d70a4    # 4.92f

    mul-float/2addr v1, p0

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance p1, Landroid/graphics/PointF;

    const v0, 0x40747ae1    # 3.82f

    mul-float/2addr v0, p0

    const v1, 0x3fe3d70a    # 1.78f

    mul-float/2addr p0, v1

    invoke-direct {p1, v0, p0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method getNextGuidedEnrollmentPoint()Landroid/graphics/PointF;
    .locals 4

    .line 159
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    const/high16 v1, 0x3f000000    # 0.5f

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v0, :cond_1

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, -0x2

    const-string v3, "com.android.systemui.biometrics.UdfpsEnrollHelper.scale"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v1

    .line 164
    :cond_1
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mLocationsEnrolled:I

    add-int/lit8 v0, v0, -0x2

    .line 165
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mGuidedEnrollmentPoints:Ljava/util/List;

    .line 166
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v0, v2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/PointF;

    .line 167
    new-instance v0, Landroid/graphics/PointF;

    iget v2, p0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v1

    iget p0, p0, Landroid/graphics/PointF;->y:F

    mul-float/2addr p0, v1

    invoke-direct {v0, v2, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method isCenterEnrollmentComplete()Z
    .locals 3

    .line 149
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mTotalSteps:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mRemainingSteps:I

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p0

    const/4 p0, 0x2

    if-lt v0, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method onEnrollmentHelp()V
    .locals 0

    return-void
.end method

.method onEnrollmentProgress(I)V
    .locals 2

    .line 118
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mTotalSteps:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 119
    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mTotalSteps:I

    .line 122
    :cond_0
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mRemainingSteps:I

    if-eq p1, v0, :cond_1

    .line 123
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mLocationsEnrolled:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mLocationsEnrolled:I

    .line 126
    :cond_1
    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mRemainingSteps:I

    .line 128
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mListener:Lcom/android/systemui/biometrics/UdfpsEnrollHelper$Listener;

    if-eqz v0, :cond_2

    .line 129
    iget p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mTotalSteps:I

    invoke-interface {v0, p1, p0}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper$Listener;->onEnrollmentProgress(II)V

    :cond_2
    return-void
.end method

.method setListener(Lcom/android/systemui/biometrics/UdfpsEnrollHelper$Listener;)V
    .locals 2

    .line 138
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mListener:Lcom/android/systemui/biometrics/UdfpsEnrollHelper$Listener;

    if-eqz p1, :cond_0

    .line 143
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mTotalSteps:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 144
    iget p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mRemainingSteps:I

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper$Listener;->onEnrollmentProgress(II)V

    :cond_0
    return-void
.end method

.method shouldShowProgressBar()Z
    .locals 1

    .line 114
    iget p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mEnrollReason:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
