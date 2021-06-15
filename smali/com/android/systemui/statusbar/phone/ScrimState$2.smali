.class final enum Lcom/android/systemui/statusbar/phone/ScrimState$2;
.super Lcom/android/systemui/statusbar/phone/ScrimState;
.source "ScrimState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ScrimState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;ILcom/android/systemui/statusbar/phone/ScrimState$1;)V

    return-void
.end method


# virtual methods
.method public prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 4

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    .line 68
    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    const-wide/16 v2, 0x1f4

    if-ne p1, v1, :cond_0

    .line 69
    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    .line 70
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mDisplayRequiresBlanking:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    goto :goto_0

    .line 76
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v1, :cond_1

    .line 77
    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0xdc

    .line 79
    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    :cond_2
    :goto_0
    const/high16 p1, -0x1000000

    .line 81
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontTint:I

    .line 82
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    .line 83
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mClipQsScrim:Z

    if-eqz v1, :cond_3

    move v2, p1

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mNotifTint:I

    .line 84
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBubbleTint:I

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontAlpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_4

    move v3, v2

    goto :goto_2

    .line 87
    :cond_4
    iget v3, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimBehindAlphaKeyguard:F

    :goto_2
    iput v3, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindAlpha:F

    if-eqz v1, :cond_5

    .line 88
    iget v3, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimBehindAlphaKeyguard:F

    goto :goto_3

    :cond_5
    move v3, v0

    :goto_3
    iput v3, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mNotifAlpha:F

    .line 89
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBubbleAlpha:F

    if-eqz v1, :cond_6

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {p0, v0, v2, p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->updateScrimColor(Lcom/android/systemui/scrim/ScrimView;FI)V

    :cond_6
    return-void
.end method
