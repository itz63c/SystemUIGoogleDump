.class public final Lcom/android/systemui/screenrecord/ScreenRecordDialog_Factory;
.super Ljava/lang/Object;
.source "ScreenRecordDialog_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/screenrecord/ScreenRecordDialog;",
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

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog_Factory;->controllerProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p2, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog_Factory;->userContextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/screenrecord/ScreenRecordDialog_Factory;
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
            "Lcom/android/systemui/screenrecord/ScreenRecordDialog_Factory;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/android/systemui/screenrecord/ScreenRecordDialog_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/screenrecord/ScreenRecordDialog_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/screenrecord/RecordingController;Lcom/android/systemui/settings/UserContextProvider;)Lcom/android/systemui/screenrecord/ScreenRecordDialog;
    .locals 1

    .line 39
    new-instance v0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/screenrecord/ScreenRecordDialog;-><init>(Lcom/android/systemui/screenrecord/RecordingController;Lcom/android/systemui/settings/UserContextProvider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/screenrecord/ScreenRecordDialog;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog_Factory;->controllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/screenrecord/RecordingController;

    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog_Factory;->userContextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/settings/UserContextProvider;

    invoke-static {v0, p0}, Lcom/android/systemui/screenrecord/ScreenRecordDialog_Factory;->newInstance(Lcom/android/systemui/screenrecord/RecordingController;Lcom/android/systemui/settings/UserContextProvider;)Lcom/android/systemui/screenrecord/ScreenRecordDialog;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/ScreenRecordDialog_Factory;->get()Lcom/android/systemui/screenrecord/ScreenRecordDialog;

    move-result-object p0

    return-object p0
.end method
