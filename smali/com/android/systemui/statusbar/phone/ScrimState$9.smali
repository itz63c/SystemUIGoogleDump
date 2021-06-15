.class final enum Lcom/android/systemui/statusbar/phone/ScrimState$9;
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

    .line 208
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;ILcom/android/systemui/statusbar/phone/ScrimState$1;)V

    return-void
.end method


# virtual methods
.method public getBehindAlpha()F
    .locals 0

    .line 228
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mWakeLockScreenSensorActive:Z

    if-eqz p0, :cond_0

    const p0, 0x3f19999a    # 0.6f

    goto :goto_0

    .line 229
    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBehindAlpha()F

    move-result p0

    :goto_0
    return p0
.end method

.method public prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 4

    .line 211
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAodFrontScrimAlpha:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontAlpha:F

    const/4 v0, 0x0

    .line 212
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBubbleAlpha:F

    const/high16 v0, -0x1000000

    .line 213
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    .line 214
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontTint:I

    .line 215
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mDisplayRequiresBlanking:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    .line 216
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mWakeLockScreenSensorActive:Z

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x3e8

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0xdc

    .line 217
    :goto_0
    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    if-eqz v1, :cond_1

    .line 221
    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v1, :cond_1

    .line 222
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;->updateScrimColor(Lcom/android/systemui/scrim/ScrimView;FI)V

    :cond_1
    return-void
.end method
