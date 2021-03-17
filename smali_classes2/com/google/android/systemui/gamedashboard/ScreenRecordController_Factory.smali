.class public final Lcom/google/android/systemui/gamedashboard/ScreenRecordController_Factory;
.super Ljava/lang/Object;
.source "ScreenRecordController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/gamedashboard/ScreenRecordController;",
        ">;"
    }
.end annotation


# instance fields
.field private final controllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/screenrecord/RecordingController;",
            ">;"
        }
    .end annotation
.end field

.field private final userContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/UserContextProvider;",
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
            "Lcom/android/systemui/screenrecord/RecordingController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/UserContextProvider;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController_Factory;->controllerProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController_Factory;->userContextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/gamedashboard/ScreenRecordController_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/screenrecord/RecordingController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/UserContextProvider;",
            ">;)",
            "Lcom/google/android/systemui/gamedashboard/ScreenRecordController_Factory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController_Factory;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/screenrecord/RecordingController;Lcom/android/systemui/settings/UserContextProvider;)Lcom/google/android/systemui/gamedashboard/ScreenRecordController;
    .locals 1

    .line 41
    new-instance v0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;-><init>(Lcom/android/systemui/screenrecord/RecordingController;Lcom/android/systemui/settings/UserContextProvider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/gamedashboard/ScreenRecordController;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController_Factory;->controllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/screenrecord/RecordingController;

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController_Factory;->userContextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/settings/UserContextProvider;

    invoke-static {v0, p0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController_Factory;->newInstance(Lcom/android/systemui/screenrecord/RecordingController;Lcom/android/systemui/settings/UserContextProvider;)Lcom/google/android/systemui/gamedashboard/ScreenRecordController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController_Factory;->get()Lcom/google/android/systemui/gamedashboard/ScreenRecordController;

    move-result-object p0

    return-object p0
.end method
