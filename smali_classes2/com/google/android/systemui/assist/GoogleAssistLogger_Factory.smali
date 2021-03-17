.class public final Lcom/google/android/systemui/assist/GoogleAssistLogger_Factory;
.super Ljava/lang/Object;
.source "GoogleAssistLogger_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/assist/GoogleAssistLogger;",
        ">;"
    }
.end annotation


# instance fields
.field private final assistHandleBehaviorControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistHandleBehaviorController;",
            ">;"
        }
    .end annotation
.end field

.field private final assistUtilsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/app/AssistUtils;",
            ">;"
        }
    .end annotation
.end field

.field private final assistantPresenceHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final phoneStateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/PhoneStateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final uiEventLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/app/AssistUtils;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/PhoneStateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistHandleBehaviorController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/systemui/assist/GoogleAssistLogger_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p2, p0, Lcom/google/android/systemui/assist/GoogleAssistLogger_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p3, p0, Lcom/google/android/systemui/assist/GoogleAssistLogger_Factory;->assistUtilsProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p4, p0, Lcom/google/android/systemui/assist/GoogleAssistLogger_Factory;->phoneStateMonitorProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p5, p0, Lcom/google/android/systemui/assist/GoogleAssistLogger_Factory;->assistHandleBehaviorControllerProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p6, p0, Lcom/google/android/systemui/assist/GoogleAssistLogger_Factory;->assistantPresenceHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/assist/GoogleAssistLogger_Factory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/app/AssistUtils;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/PhoneStateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistHandleBehaviorController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;",
            ">;)",
            "Lcom/google/android/systemui/assist/GoogleAssistLogger_Factory;"
        }
    .end annotation

    .line 57
    new-instance v7, Lcom/google/android/systemui/assist/GoogleAssistLogger_Factory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/systemui/assist/GoogleAssistLogger_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;Lcom/android/internal/app/AssistUtils;Lcom/android/systemui/assist/PhoneStateMonitor;Lcom/android/systemui/assist/AssistHandleBehaviorController;Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;)Lcom/google/android/systemui/assist/GoogleAssistLogger;
    .locals 8

    .line 64
    new-instance v7, Lcom/google/android/systemui/assist/GoogleAssistLogger;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/systemui/assist/GoogleAssistLogger;-><init>(Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;Lcom/android/internal/app/AssistUtils;Lcom/android/systemui/assist/PhoneStateMonitor;Lcom/android/systemui/assist/AssistHandleBehaviorController;Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;)V

    return-object v7
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/assist/GoogleAssistLogger;
    .locals 7

    .line 49
    iget-object v0, p0, Lcom/google/android/systemui/assist/GoogleAssistLogger_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/systemui/assist/GoogleAssistLogger_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/logging/UiEventLogger;

    iget-object v0, p0, Lcom/google/android/systemui/assist/GoogleAssistLogger_Factory;->assistUtilsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/internal/app/AssistUtils;

    iget-object v0, p0, Lcom/google/android/systemui/assist/GoogleAssistLogger_Factory;->phoneStateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/assist/PhoneStateMonitor;

    iget-object v0, p0, Lcom/google/android/systemui/assist/GoogleAssistLogger_Factory;->assistHandleBehaviorControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/assist/AssistHandleBehaviorController;

    iget-object p0, p0, Lcom/google/android/systemui/assist/GoogleAssistLogger_Factory;->assistantPresenceHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;

    invoke-static/range {v1 .. v6}, Lcom/google/android/systemui/assist/GoogleAssistLogger_Factory;->newInstance(Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;Lcom/android/internal/app/AssistUtils;Lcom/android/systemui/assist/PhoneStateMonitor;Lcom/android/systemui/assist/AssistHandleBehaviorController;Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;)Lcom/google/android/systemui/assist/GoogleAssistLogger;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/GoogleAssistLogger_Factory;->get()Lcom/google/android/systemui/assist/GoogleAssistLogger;

    move-result-object p0

    return-object p0
.end method
