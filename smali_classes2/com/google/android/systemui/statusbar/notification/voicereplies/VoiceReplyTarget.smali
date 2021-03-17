.class final Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;
.super Ljava/lang/Object;
.source "NotificationVoiceReplyManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationVoiceReplyManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationVoiceReplyManager.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 NotificationVoiceReplyLogger.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger\n+ 4 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n+ 5 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,779:1\n1#2:780\n54#3:781\n54#3:788\n54#3:795\n54#3:802\n54#3:809\n54#3:816\n54#3:823\n54#3:830\n54#3:845\n54#3:860\n113#4,6:782\n113#4,6:789\n113#4,6:796\n113#4,6:803\n113#4,6:810\n113#4,6:817\n113#4,6:824\n113#4,6:831\n113#4,6:846\n113#4,6:861\n197#5,8:837\n197#5,8:852\n197#5,8:867\n*E\n*S KotlinDebug\n*F\n+ 1 NotificationVoiceReplyManager.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget\n*L\n575#1:781\n610#1:788\n579#1:795\n610#1:802\n603#1:809\n606#1:816\n610#1:823\n617#1:830\n632#1:845\n647#1:860\n575#1,6:782\n610#1,6:789\n579#1,6:796\n610#1,6:803\n603#1,6:810\n606#1,6:817\n610#1,6:824\n617#1,6:831\n632#1,6:846\n647#1,6:861\n618#1,8:837\n633#1,8:852\n653#1,8:867\n*E\n"
.end annotation


# instance fields
.field private final actionIntent:Landroid/app/PendingIntent;

.field private final assistIconDrawable:Landroid/graphics/drawable/Drawable;

.field private final assistIconPaddingPx:I

.field private final assistIconSizePx:I

.field private final builder:Landroid/app/Notification$Builder;

.field private final entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private final expandedViewReplyButton:Landroid/widget/Button;

.field private final freeformInput:Landroid/app/RemoteInput;

.field private final handlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final headsUpViewReplyButton:Landroid/widget/Button;

.field private final logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

.field private final notifKey:Ljava/lang/String;

.field private final notificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private final postTime:J

.field private final remoteInputs:[Landroid/app/RemoteInput;

.field private final shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private final statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private final userId:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification$Builder;JLjava/util/List;ILandroid/app/PendingIntent;[Landroid/app/RemoteInput;Landroid/app/RemoteInput;Landroid/widget/Button;Landroid/widget/Button;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;IIILcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Landroid/content/Context;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Landroid/app/Notification$Builder;",
            "J",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;",
            ">;I",
            "Landroid/app/PendingIntent;",
            "[",
            "Landroid/app/RemoteInput;",
            "Landroid/app/RemoteInput;",
            "Landroid/widget/Button;",
            "Landroid/widget/Button;",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            "III",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Landroid/content/Context;",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p12

    move-object/from16 v9, p16

    move-object/from16 v10, p17

    move-object/from16 v11, p18

    move-object/from16 v12, p20

    const-string v13, "entry"

    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "builder"

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "handlers"

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "actionIntent"

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "remoteInputs"

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "freeformInput"

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "expandedViewReplyButton"

    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "notificationRemoteInputManager"

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "shadeController"

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "statusBar"

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "statusBarStateController"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "context"

    move-object/from16 v14, p19

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "logger"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 544
    iput-object v2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->builder:Landroid/app/Notification$Builder;

    move-wide/from16 v1, p3

    .line 545
    iput-wide v1, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->postTime:J

    .line 546
    iput-object v3, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->handlers:Ljava/util/List;

    move/from16 v1, p6

    .line 547
    iput v1, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->userId:I

    .line 548
    iput-object v4, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->actionIntent:Landroid/app/PendingIntent;

    .line 549
    iput-object v5, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->remoteInputs:[Landroid/app/RemoteInput;

    .line 550
    iput-object v6, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->freeformInput:Landroid/app/RemoteInput;

    .line 551
    iput-object v7, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->expandedViewReplyButton:Landroid/widget/Button;

    move-object/from16 v1, p11

    .line 552
    iput-object v1, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->headsUpViewReplyButton:Landroid/widget/Button;

    .line 553
    iput-object v8, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->notificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 557
    iput-object v9, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 558
    iput-object v10, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 559
    iput-object v11, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 561
    iput-object v12, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    .line 563
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "entry.key"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->notifKey:Ljava/lang/String;

    .line 565
    invoke-virtual/range {p19 .. p19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move/from16 v2, p14

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->assistIconSizePx:I

    .line 567
    invoke-virtual/range {p19 .. p19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v3, p15

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->assistIconPaddingPx:I

    .line 568
    invoke-virtual/range {p19 .. p19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    move/from16 v4, p13

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    .line 569
    invoke-virtual {v2, v3, v3, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object v2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->assistIconDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static final synthetic access$getShadeController$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/android/systemui/statusbar/phone/ShadeController;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    return-object p0
.end method

.method public static final synthetic access$getStatusBar$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method

.method public static final synthetic access$getStatusBarStateController$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    return-object p0
.end method

.method private final setCtaVisibility(Landroid/widget/Button;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 670
    iget v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->assistIconPaddingPx:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 672
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->assistIconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_1
    move-object p0, v0

    .line 671
    :goto_1
    invoke-virtual {p1, p0, v0, v0, v0}, Landroid/widget/Button;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final setCtaVisibility(Z)V
    .locals 3

    .line 678
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    const-string v1, "expanded"

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logUpdatePoodle(Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->expandedViewReplyButton:Landroid/widget/Button;

    invoke-direct {p0, v0, p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->setCtaVisibility(Landroid/widget/Button;Z)V

    .line 680
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->headsUpViewReplyButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    goto :goto_0

    .line 681
    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    const-string v2, "headsUp"

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logUpdatePoodle(Ljava/lang/String;)V

    .line 682
    invoke-direct {p0, v0, p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->setCtaVisibility(Landroid/widget/Button;Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method final synthetic awaitFocusGained(Lcom/android/systemui/statusbar/policy/RemoteInputView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    .line 666
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->awaitFocusState(Lcom/android/systemui/statusbar/policy/RemoteInputView;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method final synthetic awaitFocusLost(Lcom/android/systemui/statusbar/policy/RemoteInputView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 667
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->awaitFocusState(Lcom/android/systemui/statusbar/policy/RemoteInputView;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method final synthetic awaitFocusState(Lcom/android/systemui/statusbar/policy/RemoteInputView;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 652
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->editTextHasFocus()Z

    move-result p0

    if-ne p0, p2, :cond_0

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 198
    :cond_0
    new-instance p0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 654
    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitFocusState$2$listener$1;

    invoke-direct {v0, p2, p1, p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitFocusState$2$listener$1;-><init>(ZLcom/android/systemui/statusbar/policy/RemoteInputView;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 662
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->addOnEditTextFocusChangedListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 663
    new-instance p2, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitFocusState$2$1;

    invoke-direct {p2, p1, v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitFocusState$2$1;-><init>(Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitFocusState$2$listener$1;)V

    invoke-interface {p0, p2}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 203
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 197
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 204
    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method final synthetic expandShade(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 615
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const-string v1, "NotifVoiceReply"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 617
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    .line 54
    invoke-virtual {v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->getLogBuffer()Lcom/android/systemui/log/LogBuffer;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    new-instance v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    const-string v5, "On keyguard, waiting for SHADE_LOCKED state"

    invoke-direct {v4, v5}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v5

    if-nez v5, :cond_0

    .line 114
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    .line 198
    :cond_0
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 619
    new-instance v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$2$callback$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$2$callback$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 627
    new-instance v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$2$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$2$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$2$callback$1;)V

    invoke-interface {v0, v2}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 628
    invoke-static {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getStatusBarStateController$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 629
    invoke-static {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getShadeController$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/android/systemui/statusbar/phone/ShadeController;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->goToLockedShade(Landroid/view/View;)V

    .line 203
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 197
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 204
    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_3
    if-nez v0, :cond_7

    .line 631
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_7

    .line 632
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    .line 54
    invoke-virtual {v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->getLogBuffer()Lcom/android/systemui/log/LogBuffer;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    new-instance v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    const-string v5, "Shade collapsed, waiting for expansion"

    invoke-direct {v4, v5}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v5

    if-nez v5, :cond_4

    .line 114
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    .line 198
    :cond_4
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 634
    new-instance v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$3$callback$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$3$callback$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 642
    new-instance v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$3$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$3$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$3$callback$1;)V

    invoke-interface {v0, v2}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 643
    invoke-static {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getStatusBarStateController$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 644
    invoke-static {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getStatusBar$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateExpandNotificationsPanel()V

    .line 203
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 197
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_5

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 204
    :cond_5
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_6

    return-object p0

    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 647
    :cond_7
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    .line 54
    invoke-virtual {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->getLogBuffer()Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    const-string v2, "Unknown state, just continuing"

    invoke-direct {v0, v2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v2

    if-nez v2, :cond_8

    .line 114
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object p1

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    .line 649
    :cond_8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final focus(Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p3

    instance-of v3, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;

    iget v4, v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;

    invoke-direct {v3, v1, v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 570
    iget v5, v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->label:I

    const-string v6, "riv"

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const-string v11, "Session has ended"

    const/4 v12, 0x0

    const-string v13, "NotifVoiceReply"

    if-eqz v5, :cond_4

    if-eq v5, v9, :cond_3

    if-eq v5, v8, :cond_2

    if-ne v5, v7, :cond_1

    iget-object v1, v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;

    iget-object v2, v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object/from16 v23, v2

    move-object v2, v1

    move-object/from16 v1, v23

    goto/16 :goto_5

    .line 612
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :cond_2
    iget-object v1, v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v2, v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;

    iget-object v5, v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    move-object v1, v5

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v5

    goto/16 :goto_5

    :cond_3
    iget-object v1, v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$3:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iget-object v2, v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v5, v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;

    iget-object v9, v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v0, v1

    move-object/from16 v20, v2

    move-object v2, v5

    move-object v1, v9

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    move-object v2, v5

    move-object v1, v9

    goto/16 :goto_5

    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 573
    :try_start_3
    iget-object v0, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->getNotifKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logFocus(Ljava/lang/String;)V

    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_8

    .line 575
    iget-object v0, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    const-string v3, "Entry\'s \"showing layout\" is null"

    .line 54
    invoke-virtual {v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->getLogBuffer()Lcom/android/systemui/log/LogBuffer;

    move-result-object v0

    sget-object v4, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    new-instance v5, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    invoke-direct {v5, v3}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v3

    if-nez v3, :cond_6

    .line 114
    invoke-virtual {v0, v13, v4, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v3

    .line 116
    invoke-virtual {v0, v3}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    .line 576
    :cond_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 609
    invoke-virtual {v2, v12}, Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;->setValue(I)V

    .line 610
    iget-object v1, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    .line 54
    invoke-virtual {v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->getLogBuffer()Lcom/android/systemui/log/LogBuffer;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    invoke-direct {v2, v11}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v3

    if-nez v3, :cond_7

    .line 114
    invoke-virtual {v1, v13, v4, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v2

    .line 116
    invoke-virtual {v1, v2}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_7
    return-object v0

    .line 578
    :cond_8
    :try_start_4
    iput-object v1, v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$0:Ljava/lang/Object;

    iput-object v2, v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$1:Ljava/lang/Object;

    move-object/from16 v5, p2

    iput-object v5, v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$2:Ljava/lang/Object;

    iput-object v0, v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$3:Ljava/lang/Object;

    iput v9, v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->label:I

    invoke-virtual {v1, v3}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->expandShade(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v4, :cond_9

    return-object v4

    :cond_9
    move-object/from16 v20, v5

    .line 579
    :goto_2
    iget-object v5, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    const-string v9, "Shade expanded"

    .line 54
    invoke-virtual {v5}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->getLogBuffer()Lcom/android/systemui/log/LogBuffer;

    move-result-object v5

    sget-object v15, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    new-instance v14, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    invoke-direct {v14, v9}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v5}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v9

    if-nez v9, :cond_a

    .line 114
    invoke-virtual {v5, v13, v15, v14}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v9

    .line 116
    invoke-virtual {v5, v9}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    .line 581
    :cond_a
    new-instance v5, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$authBypassCheck$1;

    invoke-direct {v5, v2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$authBypassCheck$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;)V

    .line 584
    iget-object v14, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->notificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 585
    iget-object v9, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->expandedViewReplyButton:Landroid/widget/Button;

    .line 586
    iget-object v7, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->remoteInputs:[Landroid/app/RemoteInput;

    .line 587
    iget-object v8, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->freeformInput:Landroid/app/RemoteInput;

    .line 588
    iget-object v10, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->actionIntent:Landroid/app/PendingIntent;

    const/16 v19, 0x0

    move-object/from16 v22, v15

    move-object v15, v9

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v10

    move-object/from16 v21, v5

    .line 584
    invoke-virtual/range {v14 .. v21}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->activateRemoteInput(Landroid/view/View;[Landroid/app/RemoteInput;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationRemoteInputManager$AuthBypassPredicate;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v0, "Could not activate remote input for voice reply"

    .line 594
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 609
    invoke-virtual {v2, v12}, Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;->setValue(I)V

    .line 610
    iget-object v1, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    .line 54
    invoke-virtual {v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->getLogBuffer()Lcom/android/systemui/log/LogBuffer;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    invoke-direct {v2, v11}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v3

    if-nez v3, :cond_b

    move-object/from16 v5, v22

    .line 114
    invoke-virtual {v1, v13, v5, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v2

    .line 116
    invoke-virtual {v1, v2}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_b
    return-object v0

    :cond_c
    move-object/from16 v5, v22

    .line 600
    :try_start_5
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandedRemoteInput()Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v0

    .line 603
    iget-object v7, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    const-string v8, "Waiting for RemoteInputView focus"

    .line 54
    invoke-virtual {v7}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->getLogBuffer()Lcom/android/systemui/log/LogBuffer;

    move-result-object v7

    new-instance v9, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    invoke-direct {v9, v8}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v7}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v8

    if-nez v8, :cond_d

    .line 114
    invoke-virtual {v7, v13, v5, v9}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v5

    .line 116
    invoke-virtual {v7, v5}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    .line 604
    :cond_d
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$0:Ljava/lang/Object;

    iput-object v2, v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$1:Ljava/lang/Object;

    iput-object v0, v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$2:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$3:Ljava/lang/Object;

    const/4 v5, 0x2

    iput v5, v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->label:I

    invoke-virtual {v1, v0, v3}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->awaitFocusGained(Lcom/android/systemui/statusbar/policy/RemoteInputView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_e

    return-object v4

    .line 606
    :cond_e
    :goto_3
    iget-object v5, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    const-string v7, "Waiting for session end (RemoteInputView focus lost)"

    .line 54
    invoke-virtual {v5}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->getLogBuffer()Lcom/android/systemui/log/LogBuffer;

    move-result-object v5

    sget-object v8, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    new-instance v9, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    invoke-direct {v9, v7}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v5}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v7

    if-nez v7, :cond_f

    .line 114
    invoke-virtual {v5, v13, v8, v9}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v7

    .line 116
    invoke-virtual {v5, v7}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    .line 607
    :cond_f
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$0:Ljava/lang/Object;

    iput-object v2, v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->L$2:Ljava/lang/Object;

    const/4 v5, 0x3

    iput v5, v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$1;->label:I

    invoke-virtual {v1, v0, v3}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->awaitFocusLost(Lcom/android/systemui/statusbar/policy/RemoteInputView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-ne v0, v4, :cond_10

    return-object v4

    :cond_10
    move-object/from16 v23, v2

    move-object v2, v1

    move-object/from16 v1, v23

    .line 609
    :goto_4
    invoke-virtual {v1, v12}, Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;->setValue(I)V

    .line 610
    iget-object v0, v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    .line 54
    invoke-virtual {v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->getLogBuffer()Lcom/android/systemui/log/LogBuffer;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    new-instance v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    invoke-direct {v2, v11}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v3

    if-nez v3, :cond_11

    .line 114
    invoke-virtual {v0, v13, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    .line 612
    :cond_11
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_3
    move-exception v0

    .line 609
    :goto_5
    invoke-virtual {v2, v12}, Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;->setValue(I)V

    .line 610
    iget-object v1, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    .line 54
    invoke-virtual {v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->getLogBuffer()Lcom/android/systemui/log/LogBuffer;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    new-instance v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    invoke-direct {v3, v11}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v4

    if-nez v4, :cond_12

    .line 114
    invoke-virtual {v1, v13, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v2

    .line 116
    invoke-virtual {v1, v2}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    .line 54
    :cond_12
    throw v0
.end method

.method public final getBuilder()Landroid/app/Notification$Builder;
    .locals 0

    .line 544
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->builder:Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public final getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    .line 543
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p0
.end method

.method public final getHandlers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;",
            ">;"
        }
    .end annotation

    .line 546
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->handlers:Ljava/util/List;

    return-object p0
.end method

.method public final getNotifKey()Ljava/lang/String;
    .locals 0

    .line 563
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->notifKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getPostTime()J
    .locals 2

    .line 545
    iget-wide v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->postTime:J

    return-wide v0
.end method

.method public final getUserId()I
    .locals 0

    .line 547
    iget p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->userId:I

    return p0
.end method

.method public final hideCTA()V
    .locals 1

    const/4 v0, 0x0

    .line 686
    invoke-direct {p0, v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->setCtaVisibility(Z)V

    return-void
.end method

.method public final showCTA()V
    .locals 1

    const/4 v0, 0x1

    .line 685
    invoke-direct {p0, v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->setCtaVisibility(Z)V

    return-void
.end method
