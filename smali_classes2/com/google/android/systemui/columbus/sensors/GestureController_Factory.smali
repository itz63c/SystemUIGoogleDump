.class public final Lcom/google/android/systemui/columbus/sensors/GestureController_Factory;
.super Ljava/lang/Object;
.source "GestureController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/columbus/sensors/GestureController;",
        ">;"
    }
.end annotation


# instance fields
.field private final gestureSensorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/sensors/GestureSensor;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/sensors/GestureSensor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureController_Factory;->gestureSensorProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p2, p0, Lcom/google/android/systemui/columbus/sensors/GestureController_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/columbus/sensors/GestureController_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/sensors/GestureSensor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;)",
            "Lcom/google/android/systemui/columbus/sensors/GestureController_Factory;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/google/android/systemui/columbus/sensors/GestureController_Factory;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/columbus/sensors/GestureController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/google/android/systemui/columbus/sensors/GestureSensor;Lcom/android/internal/logging/UiEventLogger;)Lcom/google/android/systemui/columbus/sensors/GestureController;
    .locals 1

    .line 39
    new-instance v0, Lcom/google/android/systemui/columbus/sensors/GestureController;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/columbus/sensors/GestureController;-><init>(Lcom/google/android/systemui/columbus/sensors/GestureSensor;Lcom/android/internal/logging/UiEventLogger;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/columbus/sensors/GestureController;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController_Factory;->gestureSensorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/columbus/sensors/GestureSensor;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/logging/UiEventLogger;

    invoke-static {v0, p0}, Lcom/google/android/systemui/columbus/sensors/GestureController_Factory;->newInstance(Lcom/google/android/systemui/columbus/sensors/GestureSensor;Lcom/android/internal/logging/UiEventLogger;)Lcom/google/android/systemui/columbus/sensors/GestureController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/sensors/GestureController_Factory;->get()Lcom/google/android/systemui/columbus/sensors/GestureController;

    move-result-object p0

    return-object p0
.end method
