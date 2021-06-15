.class public Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;
.super Ljava/lang/Object;
.source "NgaMessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$NavBarVisibilityListener;,
        Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$WarmingListener;,
        Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$WarmingRequest;,
        Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$TakeScreenshotListener;,
        Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$GoBackListener;,
        Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ZerostateInfoListener;,
        Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$KeyboardInfoListener;,
        Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$StartActivityInfoListener;,
        Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ClearListener;,
        Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ChipsInfoListener;,
        Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$GreetingInfoListener;,
        Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$TranscriptionInfoListener;,
        Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$EdgeLightsInfoListener;,
        Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfoListener;,
        Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfo;,
        Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$CardInfoListener;,
        Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$AudioInfoListener;,
        Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$KeepAliveListener;
    }
.end annotation


# static fields
.field private static final VERBOSE:Z


# instance fields
.field private final mAssistantPresenceHandler:Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;

.field private final mAudioInfoListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$AudioInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mCardInfoListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$CardInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mChipsInfoListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ChipsInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mClearListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ClearListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigInfoListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mEdgeLightsInfoListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$EdgeLightsInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mGoBackListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$GoBackListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mGreetingInfoListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$GreetingInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mKeepAliveListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$KeepAliveListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyboardInfoListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$KeyboardInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNavBarVisibilityListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$NavBarVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNgaUiController:Lcom/google/android/systemui/assist/uihints/NgaUiController;

.field private final mStartActivityInfoListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$StartActivityInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTakeScreenshotListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$TakeScreenshotListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTranscriptionInfoListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$TranscriptionInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mWarmingListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$WarmingListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mZerostateInfoListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ZerostateInfoListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$bo5vNVvIHpHTdIwmjAC_nL8myHs(Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;Landroid/os/Bundle;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->lambda$processBundle$0(Landroid/os/Bundle;Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 197
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->VERBOSE:Z

    return-void
.end method

.method constructor <init>(Lcom/google/android/systemui/assist/uihints/NgaUiController;Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/assist/uihints/NgaUiController;",
            "Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$KeepAliveListener;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$AudioInfoListener;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$CardInfoListener;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfoListener;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$EdgeLightsInfoListener;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$TranscriptionInfoListener;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$GreetingInfoListener;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ChipsInfoListener;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ClearListener;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$StartActivityInfoListener;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$KeyboardInfoListener;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ZerostateInfoListener;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$GoBackListener;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$TakeScreenshotListener;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$WarmingListener;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$NavBarVisibilityListener;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 321
    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mNgaUiController:Lcom/google/android/systemui/assist/uihints/NgaUiController;

    move-object v1, p2

    .line 322
    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mAssistantPresenceHandler:Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;

    move-object v1, p3

    .line 323
    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mKeepAliveListeners:Ljava/util/Set;

    move-object v1, p4

    .line 324
    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mAudioInfoListeners:Ljava/util/Set;

    move-object v1, p5

    .line 325
    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mCardInfoListeners:Ljava/util/Set;

    move-object v1, p6

    .line 326
    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mConfigInfoListeners:Ljava/util/Set;

    move-object v1, p7

    .line 327
    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mEdgeLightsInfoListeners:Ljava/util/Set;

    move-object v1, p8

    .line 328
    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mTranscriptionInfoListeners:Ljava/util/Set;

    move-object v1, p9

    .line 329
    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mGreetingInfoListeners:Ljava/util/Set;

    move-object v1, p10

    .line 330
    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mChipsInfoListeners:Ljava/util/Set;

    move-object v1, p11

    .line 331
    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mClearListeners:Ljava/util/Set;

    move-object v1, p12

    .line 332
    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mStartActivityInfoListeners:Ljava/util/Set;

    move-object v1, p13

    .line 333
    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mKeyboardInfoListeners:Ljava/util/Set;

    move-object/from16 v1, p14

    .line 334
    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mZerostateInfoListeners:Ljava/util/Set;

    move-object/from16 v1, p15

    .line 335
    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mGoBackListeners:Ljava/util/Set;

    move-object/from16 v1, p16

    .line 336
    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mTakeScreenshotListeners:Ljava/util/Set;

    move-object/from16 v1, p17

    .line 337
    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mWarmingListeners:Ljava/util/Set;

    move-object/from16 v1, p18

    .line 338
    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mNavBarVisibilityListeners:Ljava/util/Set;

    move-object/from16 v1, p19

    .line 339
    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$processBundle$0(Landroid/os/Bundle;Ljava/lang/Runnable;)V
    .locals 0

    .line 344
    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->processBundle(Landroid/os/Bundle;Ljava/lang/Runnable;)V

    return-void
.end method

.method private logBundle(Landroid/os/Bundle;)V
    .locals 7

    .line 527
    sget-boolean p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->VERBOSE:Z

    if-eqz p0, :cond_6

    const-string p0, "action"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "audio_info"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto/16 :goto_2

    .line 532
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Contents of NGA Bundle:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "\n   "

    .line 534
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "text"

    .line 535
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "("

    .line 536
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " characters)"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v3, "chips"

    .line 537
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 538
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 540
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "\n      Chip:"

    .line 541
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "\n         "

    .line 543
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 551
    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 554
    :cond_5
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NgaMessageHandler"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void
.end method

.method private processAlwaysAvailableActions(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2

    .line 381
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "config"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string v0, "nav_bar_visible"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p1, "visible"

    .line 390
    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 391
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mNavBarVisibilityListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$NavBarVisibilityListener;

    .line 392
    invoke-interface {p2, p1}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$NavBarVisibilityListener;->onVisibleRequest(Z)V

    goto :goto_0

    .line 383
    :cond_1
    new-instance p1, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfo;

    invoke-direct {p1, p2}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfo;-><init>(Landroid/os/Bundle;)V

    .line 384
    iget-object p2, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mConfigInfoListeners:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfoListener;

    .line 385
    invoke-interface {v0, p1}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfoListener;->onConfigInfo(Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfo;)V

    goto :goto_1

    .line 387
    :cond_2
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mNgaUiController:Lcom/google/android/systemui/assist/uihints/NgaUiController;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->onUiMessageReceived()V

    :cond_3
    return v1
.end method

.method private processNgaActions(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4

    .line 402
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "warming"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "take_screenshot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "start_activity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "go_back"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v3, v1

    goto :goto_0

    :sswitch_4
    const-string v0, "card"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v3, v2

    :goto_0
    const-string p1, "intent"

    packed-switch v3, :pswitch_data_0

    return v2

    .line 432
    :pswitch_0
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    const v0, 0x3dcccccd    # 0.1f

    const-string v2, "threshold"

    .line 433
    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p2

    .line 434
    new-instance v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$WarmingRequest;

    invoke-direct {v0, p1, p2}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$WarmingRequest;-><init>(Landroid/app/PendingIntent;F)V

    .line 435
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mWarmingListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$WarmingListener;

    .line 436
    invoke-interface {p1, v0}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$WarmingListener;->onWarmingRequest(Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$WarmingRequest;)V

    goto :goto_1

    :pswitch_1
    const-string p1, "on_finish"

    .line 426
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    .line 427
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mTakeScreenshotListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$TakeScreenshotListener;

    .line 428
    invoke-interface {p2, p1}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$TakeScreenshotListener;->onTakeScreenshot(Landroid/app/PendingIntent;)V

    goto :goto_2

    .line 414
    :pswitch_2
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    const-string v0, "dismiss_shade"

    .line 415
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 416
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mStartActivityInfoListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$StartActivityInfoListener;

    .line 417
    invoke-interface {v0, p1, p2}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$StartActivityInfoListener;->onStartActivityInfo(Landroid/content/Intent;Z)V

    goto :goto_3

    .line 421
    :pswitch_3
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mGoBackListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$GoBackListener;

    .line 422
    invoke-interface {p1}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$GoBackListener;->onGoBack()V

    goto :goto_4

    :pswitch_4
    const-string p1, "is_visible"

    .line 404
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "sysui_color"

    .line 406
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "animate_transition"

    .line 407
    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "card_forces_scrim"

    .line 408
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 409
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mCardInfoListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$CardInfoListener;

    .line 410
    invoke-interface {v3, p1, v0, v2, p2}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$CardInfoListener;->onCardInfo(ZIZZ)V

    goto :goto_5

    :cond_5
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2e7b10 -> :sswitch_4
        0xb7481de -> :sswitch_3
        0x16202e4c -> :sswitch_2
        0x2e5b5c1e -> :sswitch_1
        0x43053b3d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processSysUiNgaUiActions(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 5

    .line 446
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mKeepAliveListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$KeepAliveListener;

    .line 447
    invoke-interface {v1, p1}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$KeepAliveListener;->onKeepAlive(Ljava/lang/String;)V

    goto :goto_0

    .line 450
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "chips"

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "keep_alive"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "audio_info"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "edge_lights"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "greeting"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x7

    goto :goto_1

    :sswitch_4
    const-string v1, "clear"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_5
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v1, "hide_zerostate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_7
    const-string v1, "transcription"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_8
    const-string v1, "hide_keyboard"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_1

    :cond_9
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_9
    const-string v1, "show_zerostate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_1

    :cond_a
    move v0, v4

    goto :goto_1

    :sswitch_a
    const-string v1, "show_keyboard"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_1

    :cond_b
    move v0, v3

    :goto_1
    const-string p1, "text"

    const-string v1, "tap_action"

    packed-switch v0, :pswitch_data_0

    return v3

    :pswitch_0
    const-string p1, "volume"

    .line 455
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    const-string v0, "speech_confidence"

    .line 456
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p2

    .line 457
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mAudioInfoListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$AudioInfoListener;

    .line 458
    invoke-interface {v1, p1, p2}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$AudioInfoListener;->onAudioInfo(FF)V

    goto :goto_2

    :pswitch_1
    const-string p1, "state"

    const-string v0, ""

    .line 462
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "listening"

    .line 463
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 464
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mEdgeLightsInfoListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$EdgeLightsInfoListener;

    .line 465
    invoke-interface {v1, p1, p2}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$EdgeLightsInfoListener;->onEdgeLightsInfo(Ljava/lang/String;Z)V

    goto :goto_3

    .line 479
    :pswitch_2
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 480
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/app/PendingIntent;

    .line 481
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mGreetingInfoListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$GreetingInfoListener;

    .line 482
    invoke-interface {v1, p1, p2}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$GreetingInfoListener;->onGreetingInfo(Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_4

    :pswitch_3
    const-string p1, "show_animation"

    .line 492
    invoke-virtual {p2, p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 493
    iget-object p2, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mClearListeners:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ClearListener;

    .line 494
    invoke-interface {v0, p1}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ClearListener;->onClear(Z)V

    goto :goto_5

    .line 486
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 487
    iget-object p2, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mChipsInfoListeners:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ChipsInfoListener;

    .line 488
    invoke-interface {v0, p1}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ChipsInfoListener;->onChipsInfo(Ljava/util/List;)V

    goto :goto_6

    .line 515
    :pswitch_5
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mZerostateInfoListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ZerostateInfoListener;

    .line 516
    invoke-interface {p2}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ZerostateInfoListener;->onHideZerostate()V

    goto :goto_7

    .line 470
    :pswitch_6
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 471
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    const-string v1, "text_color"

    .line 472
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 473
    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mTranscriptionInfoListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$TranscriptionInfoListener;

    .line 474
    invoke-interface {v2, p1, v0, p2}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$TranscriptionInfoListener;->onTranscriptionInfo(Ljava/lang/String;Landroid/app/PendingIntent;I)V

    goto :goto_8

    .line 504
    :pswitch_7
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mKeyboardInfoListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$KeyboardInfoListener;

    .line 505
    invoke-interface {p2}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$KeyboardInfoListener;->onHideKeyboard()V

    goto :goto_9

    .line 509
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    .line 510
    iget-object p2, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mZerostateInfoListeners:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ZerostateInfoListener;

    .line 511
    invoke-interface {v0, p1}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ZerostateInfoListener;->onShowZerostate(Landroid/app/PendingIntent;)V

    goto :goto_a

    .line 498
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    .line 499
    iget-object p2, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mKeyboardInfoListeners:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$KeyboardInfoListener;

    .line 500
    invoke-interface {v0, p1}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$KeyboardInfoListener;->onShowKeyboard(Landroid/app/PendingIntent;)V

    goto :goto_b

    .line 522
    :cond_c
    :pswitch_a
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mNgaUiController:Lcom/google/android/systemui/assist/uihints/NgaUiController;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->onUiMessageReceived()V

    return v4

    :sswitch_data_0
    .sparse-switch
        -0x7a402917 -> :sswitch_a
        -0x799e53d9 -> :sswitch_9
        -0x452d6dbc -> :sswitch_8
        -0xe69036e -> :sswitch_7
        -0xc59a3d4 -> :sswitch_6
        0x5a3f5a7 -> :sswitch_5
        0x5a5b64d -> :sswitch_4
        0xc3e8039 -> :sswitch_3
        0x2dfd7edf -> :sswitch_2
        0x5c547777 -> :sswitch_1
        0x61e8af93 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public processBundle(Landroid/os/Bundle;Ljava/lang/Runnable;)V
    .locals 5

    .line 343
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 344
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;Landroid/os/Bundle;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 348
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->logBundle(Landroid/os/Bundle;)V

    const-string v0, "action"

    const-string v1, ""

    .line 349
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, "NgaMessageHandler"

    if-eqz v1, :cond_1

    const-string p0, "No action specified, ignoring"

    .line 352
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 356
    :cond_1
    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mAssistantPresenceHandler:Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;

    invoke-virtual {v1}, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->isNgaAssistant()Z

    move-result v1

    .line 357
    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->mAssistantPresenceHandler:Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;

    invoke-virtual {v3}, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->isSysUiNgaUi()Z

    move-result v3

    .line 359
    invoke-direct {p0, v0, p1}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->processAlwaysAvailableActions(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v1, :cond_2

    .line 361
    invoke-direct {p0, v0, p1}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->processNgaActions(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v3, :cond_2

    .line 363
    invoke-direct {p0, v0, p1}, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;->processSysUiNgaUiActions(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v4

    :cond_2
    if-nez v4, :cond_3

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    aput-object v0, p0, p1

    const/4 p1, 0x1

    .line 373
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p0, p1

    const/4 p1, 0x2

    .line 374
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p0, p1

    const-string p1, "Invalid action \"%s\" for state:\n  NGA is Assistant = %b\n  SysUI is NGA UI = %b"

    .line 368
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_3
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method
