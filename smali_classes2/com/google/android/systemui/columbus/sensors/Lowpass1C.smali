.class public Lcom/google/android/systemui/columbus/sensors/Lowpass1C;
.super Ljava/lang/Object;
.source "Lowpass1C.java"


# instance fields
.field private mLastX:F

.field private mPara:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 21
    iput v0, p0, Lcom/google/android/systemui/columbus/sensors/Lowpass1C;->mPara:F

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/google/android/systemui/columbus/sensors/Lowpass1C;->mLastX:F

    return-void
.end method


# virtual methods
.method public init(F)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/google/android/systemui/columbus/sensors/Lowpass1C;->mLastX:F

    return-void
.end method

.method public setPara(F)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/google/android/systemui/columbus/sensors/Lowpass1C;->mPara:F

    return-void
.end method

.method public update(F)F
    .locals 3

    .line 38
    iget v0, p0, Lcom/google/android/systemui/columbus/sensors/Lowpass1C;->mPara:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    return p1

    :cond_0
    sub-float/2addr v1, v0

    .line 41
    iget v2, p0, Lcom/google/android/systemui/columbus/sensors/Lowpass1C;->mLastX:F

    mul-float/2addr v1, v2

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    iput v1, p0, Lcom/google/android/systemui/columbus/sensors/Lowpass1C;->mLastX:F

    return v1
.end method
