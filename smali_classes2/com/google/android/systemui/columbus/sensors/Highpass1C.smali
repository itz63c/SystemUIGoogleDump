.class public Lcom/google/android/systemui/columbus/sensors/Highpass1C;
.super Ljava/lang/Object;
.source "Highpass1C.java"


# instance fields
.field private mLastX:F

.field private mLastY:F

.field private mPara:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 21
    iput v0, p0, Lcom/google/android/systemui/columbus/sensors/Highpass1C;->mPara:F

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/google/android/systemui/columbus/sensors/Highpass1C;->mLastX:F

    .line 23
    iput v0, p0, Lcom/google/android/systemui/columbus/sensors/Highpass1C;->mLastY:F

    return-void
.end method


# virtual methods
.method public init(F)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/google/android/systemui/columbus/sensors/Highpass1C;->mLastX:F

    .line 35
    iput p1, p0, Lcom/google/android/systemui/columbus/sensors/Highpass1C;->mLastY:F

    return-void
.end method

.method public setPara(F)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/google/android/systemui/columbus/sensors/Highpass1C;->mPara:F

    return-void
.end method

.method public update(F)F
    .locals 3

    .line 40
    iget v0, p0, Lcom/google/android/systemui/columbus/sensors/Highpass1C;->mPara:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    return p1

    .line 43
    :cond_0
    iget v1, p0, Lcom/google/android/systemui/columbus/sensors/Highpass1C;->mLastY:F

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/google/android/systemui/columbus/sensors/Highpass1C;->mLastX:F

    sub-float v2, p1, v2

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    .line 44
    iput v1, p0, Lcom/google/android/systemui/columbus/sensors/Highpass1C;->mLastY:F

    .line 45
    iput p1, p0, Lcom/google/android/systemui/columbus/sensors/Highpass1C;->mLastX:F

    return v1
.end method
