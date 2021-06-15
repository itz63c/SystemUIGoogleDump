.class final enum Lcom/android/systemui/statusbar/phone/ScrimState$10;
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

    .line 236
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;ILcom/android/systemui/statusbar/phone/ScrimState$1;)V

    return-void
.end method


# virtual methods
.method public prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 4

    .line 240
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mClipQsScrim:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindAlpha:F

    .line 241
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mNotifAlpha:F

    .line 242
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontAlpha:F

    .line 243
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBubbleAlpha:F

    .line 245
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mKeyguardFadingAway:Z

    if-eqz v0, :cond_1

    .line 246
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mKeyguardFadingAwayDuration:J

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x12c

    .line 247
    :goto_1
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    .line 249
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mLaunchingAffordanceWithPreview:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimateChange:Z

    const/4 v0, 0x0

    .line 251
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontTint:I

    const/high16 v3, -0x1000000

    .line 252
    iput v3, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    .line 253
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBubbleTint:I

    .line 254
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    .line 256
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_3

    .line 258
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/systemui/statusbar/phone/ScrimState;->updateScrimColor(Lcom/android/systemui/scrim/ScrimView;FI)V

    .line 259
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/systemui/statusbar/phone/ScrimState;->updateScrimColor(Lcom/android/systemui/scrim/ScrimView;FI)V

    .line 260
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimForBubble:Lcom/android/systemui/scrim/ScrimView;

    if-eqz p1, :cond_2

    .line 261
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/systemui/statusbar/phone/ScrimState;->updateScrimColor(Lcom/android/systemui/scrim/ScrimView;FI)V

    .line 265
    :cond_2
    iput v3, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontTint:I

    .line 266
    iput v3, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    .line 267
    iput v3, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBubbleTint:I

    .line 268
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    .line 271
    :cond_3
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mClipQsScrim:Z

    if-eqz p1, :cond_4

    .line 272
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/systemui/statusbar/phone/ScrimState;->updateScrimColor(Lcom/android/systemui/scrim/ScrimView;FI)V

    :cond_4
    return-void
.end method
