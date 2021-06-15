.class public enum Lcom/android/systemui/statusbar/phone/ScrimState;
.super Ljava/lang/Enum;
.source "ScrimState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/phone/ScrimState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum AUTH_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum BRIGHTNESS_MIRROR:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum BUBBLE_EXPANDED:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum OFF:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum SHADE_LOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum UNINITIALIZED:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public static final enum UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;


# instance fields
.field mAnimateChange:Z

.field mAnimationDuration:J

.field mAodFrontScrimAlpha:F

.field mBehindAlpha:F

.field mBehindTint:I

.field mBlankScreen:Z

.field mBubbleAlpha:F

.field mBubbleTint:I

.field mClipQsScrim:Z

.field mDefaultScrimAlpha:F

.field mDisplayRequiresBlanking:Z

.field mDockManager:Lcom/android/systemui/dock/DockManager;

.field mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field mFrontAlpha:F

.field mFrontTint:I

.field mHasBackdrop:Z

.field mKeyguardFadingAway:Z

.field mKeyguardFadingAwayDuration:J

.field mLaunchingAffordanceWithPreview:Z

.field mNotifAlpha:F

.field mNotifTint:I

.field mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

.field mScrimBehindAlphaKeyguard:F

.field mScrimForBubble:Lcom/android/systemui/scrim/ScrimView;

.field mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

.field mWakeLockScreenSensorActive:Z

.field mWallpaperSupportsAmbientMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 36
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimState;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNINITIALIZED:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 41
    new-instance v1, Lcom/android/systemui/statusbar/phone/ScrimState$1;

    const-string v3, "OFF"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/systemui/statusbar/phone/ScrimState$1;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->OFF:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 64
    new-instance v3, Lcom/android/systemui/statusbar/phone/ScrimState$2;

    const-string v5, "KEYGUARD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/systemui/statusbar/phone/ScrimState$2;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 96
    new-instance v5, Lcom/android/systemui/statusbar/phone/ScrimState$3;

    const-string v7, "AUTH_SCRIMMED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/systemui/statusbar/phone/ScrimState$3;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/statusbar/phone/ScrimState;->AUTH_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 110
    new-instance v7, Lcom/android/systemui/statusbar/phone/ScrimState$4;

    const-string v9, "BOUNCER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/systemui/statusbar/phone/ScrimState$4;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 125
    new-instance v9, Lcom/android/systemui/statusbar/phone/ScrimState$5;

    const-string v11, "BOUNCER_SCRIMMED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/systemui/statusbar/phone/ScrimState$5;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 134
    new-instance v11, Lcom/android/systemui/statusbar/phone/ScrimState$6;

    const-string v13, "SHADE_LOCKED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/systemui/statusbar/phone/ScrimState$6;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/systemui/statusbar/phone/ScrimState;->SHADE_LOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 158
    new-instance v13, Lcom/android/systemui/statusbar/phone/ScrimState$7;

    const-string v15, "BRIGHTNESS_MIRROR"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/android/systemui/statusbar/phone/ScrimState$7;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/systemui/statusbar/phone/ScrimState;->BRIGHTNESS_MIRROR:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 170
    new-instance v15, Lcom/android/systemui/statusbar/phone/ScrimState$8;

    const-string v14, "AOD"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/android/systemui/statusbar/phone/ScrimState$8;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 208
    new-instance v14, Lcom/android/systemui/statusbar/phone/ScrimState$9;

    const-string v12, "PULSING"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/android/systemui/statusbar/phone/ScrimState$9;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 236
    new-instance v12, Lcom/android/systemui/statusbar/phone/ScrimState$10;

    const-string v10, "UNLOCKED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/android/systemui/statusbar/phone/ScrimState$10;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 280
    new-instance v10, Lcom/android/systemui/statusbar/phone/ScrimState$11;

    const-string v8, "BUBBLE_EXPANDED"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/android/systemui/statusbar/phone/ScrimState$11;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/systemui/statusbar/phone/ScrimState;->BUBBLE_EXPANDED:Lcom/android/systemui/statusbar/phone/ScrimState;

    const/16 v8, 0xc

    new-array v8, v8, [Lcom/android/systemui/statusbar/phone/ScrimState;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    .line 31
    sput-object v8, Lcom/android/systemui/statusbar/phone/ScrimState;->$VALUES:[Lcom/android/systemui/statusbar/phone/ScrimState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 295
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    const-wide/16 v0, 0xdc

    .line 296
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    .line 297
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontTint:I

    .line 298
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    .line 299
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBubbleTint:I

    .line 300
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mNotifTint:I

    const/4 p1, 0x1

    .line 302
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimateChange:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/android/systemui/statusbar/phone/ScrimState$1;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/ScrimState;
    .locals 1

    .line 31
    const-class v0, Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ScrimState;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/ScrimState;
    .locals 1

    .line 31
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->$VALUES:[Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/phone/ScrimState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/phone/ScrimState;

    return-object v0
.end method


# virtual methods
.method public getAnimateChange()Z
    .locals 0

    .line 395
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimateChange:Z

    return p0
.end method

.method public getAnimationDuration()J
    .locals 2

    .line 374
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    return-wide v0
.end method

.method public getBehindAlpha()F
    .locals 0

    .line 346
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindAlpha:F

    return p0
.end method

.method public getBehindTint()I
    .locals 0

    .line 362
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    return p0
.end method

.method public getBlanksScreen()Z
    .locals 0

    .line 378
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    return p0
.end method

.method public getBubbleAlpha()F
    .locals 0

    .line 354
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBubbleAlpha:F

    return p0
.end method

.method public getBubbleTint()I
    .locals 0

    .line 370
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBubbleTint:I

    return p0
.end method

.method public getFrontAlpha()F
    .locals 0

    .line 342
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontAlpha:F

    return p0
.end method

.method public getFrontTint()I
    .locals 0

    .line 358
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontTint:I

    return p0
.end method

.method public getNotifAlpha()F
    .locals 0

    .line 350
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mNotifAlpha:F

    return p0
.end method

.method public getNotifTint()I
    .locals 0

    .line 366
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mNotifTint:I

    return p0
.end method

.method public init(Lcom/android/systemui/scrim/ScrimView;Lcom/android/systemui/scrim/ScrimView;Lcom/android/systemui/scrim/ScrimView;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/dock/DockManager;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    .line 329
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    .line 330
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimForBubble:Lcom/android/systemui/scrim/ScrimView;

    .line 332
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 333
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mDockManager:Lcom/android/systemui/dock/DockManager;

    .line 334
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mDisplayRequiresBlanking:Z

    return-void
.end method

.method public isLowPowerState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 0

    return-void
.end method

.method public setAodFrontScrimAlpha(F)V
    .locals 0

    .line 399
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAodFrontScrimAlpha:F

    return-void
.end method

.method public setBubbleAlpha(F)V
    .locals 0

    .line 411
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBubbleAlpha:F

    return-void
.end method

.method public setClipQsScrim(Z)V
    .locals 0

    .line 440
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mClipQsScrim:Z

    return-void
.end method

.method public setDefaultScrimAlpha(F)V
    .locals 0

    .line 407
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mDefaultScrimAlpha:F

    return-void
.end method

.method public setHasBackdrop(Z)V
    .locals 0

    .line 427
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mHasBackdrop:Z

    return-void
.end method

.method public setKeyguardFadingAway(ZJ)V
    .locals 0

    .line 435
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mKeyguardFadingAway:Z

    .line 436
    iput-wide p2, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mKeyguardFadingAwayDuration:J

    return-void
.end method

.method public setLaunchingAffordanceWithPreview(Z)V
    .locals 0

    .line 419
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mLaunchingAffordanceWithPreview:Z

    return-void
.end method

.method public setScrimBehindAlphaKeyguard(F)V
    .locals 0

    .line 403
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimBehindAlphaKeyguard:F

    return-void
.end method

.method public setWakeLockScreenSensorActive(Z)V
    .locals 0

    .line 431
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mWakeLockScreenSensorActive:Z

    return-void
.end method

.method public setWallpaperSupportsAmbientMode(Z)V
    .locals 0

    .line 415
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mWallpaperSupportsAmbientMode:Z

    return-void
.end method

.method public updateScrimColor(Lcom/android/systemui/scrim/ScrimView;FI)V
    .locals 4

    .line 383
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    if-ne p1, v0, :cond_0

    const-string v0, "front_scrim_alpha"

    goto :goto_0

    :cond_0
    const-string v0, "back_scrim_alpha"

    :goto_0
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    const-wide/16 v2, 0x1000

    .line 382
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 387
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    if-ne p1, p0, :cond_1

    const-string p0, "front_scrim_tint"

    goto :goto_1

    :cond_1
    const-string p0, "back_scrim_tint"

    .line 388
    :goto_1
    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 386
    invoke-static {v2, v3, p0, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 390
    invoke-virtual {p1, p3}, Lcom/android/systemui/scrim/ScrimView;->setTint(I)V

    .line 391
    invoke-virtual {p1, p2}, Lcom/android/systemui/scrim/ScrimView;->setViewAlpha(F)V

    return-void
.end method
