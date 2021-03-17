.class public Lcom/android/systemui/biometrics/UdfpsEnrollHelper;
.super Ljava/lang/Object;
.source "UdfpsEnrollHelper.java"


# instance fields
.field private mCurrentProgress:I

.field private final mEnrollReason:I

.field private mTotalSteps:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mTotalSteps:I

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mCurrentProgress:I

    .line 36
    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mEnrollReason:I

    return-void
.end method


# virtual methods
.method onEnrollmentProgress(ILcom/android/systemui/biometrics/UdfpsProgressBar;)V
    .locals 4

    .line 44
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mTotalSteps:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 45
    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mTotalSteps:I

    .line 48
    :cond_0
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mTotalSteps:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    sub-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    mul-int/2addr v0, p1

    iget p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mTotalSteps:I

    add-int/2addr p1, v3

    div-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mCurrentProgress:I

    .line 50
    invoke-virtual {p2, v0, v3}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    return-void
.end method

.method shouldShowProgressBar()Z
    .locals 1

    .line 40
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

.method updateProgress(Lcom/android/systemui/biometrics/UdfpsProgressBar;)V
    .locals 0

    .line 54
    iget p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mCurrentProgress:I

    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
