.class public final Lcom/google/android/systemui/assist/GoogleAssistLogger;
.super Lcom/android/systemui/assist/AssistLogger;
.source "GoogleAssistLogger.kt"


# instance fields
.field private final assistantPresenceHandler:Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;Lcom/android/internal/app/AssistUtils;Lcom/android/systemui/assist/PhoneStateMonitor;Lcom/android/systemui/assist/AssistHandleBehaviorController;Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiEventLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assistUtils"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneStateMonitor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assistHandleBehaviorController"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assistantPresenceHandler"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/assist/AssistLogger;-><init>(Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;Lcom/android/internal/app/AssistUtils;Lcom/android/systemui/assist/PhoneStateMonitor;Lcom/android/systemui/assist/AssistHandleBehaviorController;)V

    .line 23
    iput-object p6, p0, Lcom/google/android/systemui/assist/GoogleAssistLogger;->assistantPresenceHandler:Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;

    return-void
.end method


# virtual methods
.method protected reportAssistantInvocationExtraData()V
    .locals 2

    .line 28
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 29
    sget-object v1, Landroid/hardware/google/pixel/vendor/PixelAtoms$Ids;->ASSISTANT_INVOCATION_PIXEL_REPORTED:Landroid/hardware/google/pixel/vendor/PixelAtoms$Ids;

    invoke-virtual {v1}, Landroid/hardware/google/pixel/vendor/PixelAtoms$Ids;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistLogger;->getOrCreateInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 31
    iget-object p0, p0, Lcom/google/android/systemui/assist/GoogleAssistLogger;->assistantPresenceHandler:Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->isNgaAssistant()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 32
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    .line 28
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method
