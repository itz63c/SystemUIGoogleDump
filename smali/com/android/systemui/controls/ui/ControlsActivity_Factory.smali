.class public final Lcom/android/systemui/controls/ui/ControlsActivity_Factory;
.super Ljava/lang/Object;
.source "ControlsActivity_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/controls/ui/ControlsActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final uiControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/ControlsUiController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/ControlsUiController;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsActivity_Factory;->uiControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/controls/ui/ControlsActivity_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/ControlsUiController;",
            ">;)",
            "Lcom/android/systemui/controls/ui/ControlsActivity_Factory;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/android/systemui/controls/ui/ControlsActivity_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/ui/ControlsActivity_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/controls/ui/ControlsUiController;)Lcom/android/systemui/controls/ui/ControlsActivity;
    .locals 1

    .line 33
    new-instance v0, Lcom/android/systemui/controls/ui/ControlsActivity;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/ui/ControlsActivity;-><init>(Lcom/android/systemui/controls/ui/ControlsUiController;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/controls/ui/ControlsActivity;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsActivity_Factory;->uiControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/ui/ControlsUiController;

    invoke-static {p0}, Lcom/android/systemui/controls/ui/ControlsActivity_Factory;->newInstance(Lcom/android/systemui/controls/ui/ControlsUiController;)Lcom/android/systemui/controls/ui/ControlsActivity;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlsActivity_Factory;->get()Lcom/android/systemui/controls/ui/ControlsActivity;

    move-result-object p0

    return-object p0
.end method
