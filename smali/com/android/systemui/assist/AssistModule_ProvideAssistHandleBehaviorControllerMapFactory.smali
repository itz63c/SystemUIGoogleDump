.class public final Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleBehaviorControllerMapFactory;
.super Ljava/lang/Object;
.source "AssistModule_ProvideAssistHandleBehaviorControllerMapFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/Map<",
        "Lcom/android/systemui/assist/AssistHandleBehavior;",
        "Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final likeHomeBehaviorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;",
            ">;"
        }
    .end annotation
.end field

.field private final offBehaviorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistHandleOffBehavior;",
            ">;"
        }
    .end annotation
.end field

.field private final reminderExpBehaviorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistHandleOffBehavior;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleBehaviorControllerMapFactory;->offBehaviorProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p2, p0, Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleBehaviorControllerMapFactory;->likeHomeBehaviorProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p3, p0, Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleBehaviorControllerMapFactory;->reminderExpBehaviorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleBehaviorControllerMapFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistHandleOffBehavior;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;",
            ">;)",
            "Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleBehaviorControllerMapFactory;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleBehaviorControllerMapFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleBehaviorControllerMapFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideAssistHandleBehaviorControllerMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Lcom/android/systemui/assist/AssistHandleBehavior;",
            "Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;",
            ">;"
        }
    .end annotation

    .line 47
    check-cast p0, Lcom/android/systemui/assist/AssistHandleOffBehavior;

    check-cast p1, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;

    check-cast p2, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/assist/AssistModule;->provideAssistHandleBehaviorControllerMap(Lcom/android/systemui/assist/AssistHandleOffBehavior;Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)Ljava/util/Map;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleBehaviorControllerMapFactory;->get()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/systemui/assist/AssistHandleBehavior;",
            "Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleBehaviorControllerMapFactory;->offBehaviorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleBehaviorControllerMapFactory;->likeHomeBehaviorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleBehaviorControllerMapFactory;->reminderExpBehaviorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/android/systemui/assist/AssistModule_ProvideAssistHandleBehaviorControllerMapFactory;->provideAssistHandleBehaviorControllerMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
