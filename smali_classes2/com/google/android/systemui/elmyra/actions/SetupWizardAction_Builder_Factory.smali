.class public final Lcom/google/android/systemui/elmyra/actions/SetupWizardAction_Builder_Factory;
.super Ljava/lang/Object;
.source "SetupWizardAction_Builder_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
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
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction_Builder_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction_Builder_Factory;->statusBarProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/elmyra/actions/SetupWizardAction_Builder_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;)",
            "Lcom/google/android/systemui/elmyra/actions/SetupWizardAction_Builder_Factory;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction_Builder_Factory;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction_Builder_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;
    .locals 1

    .line 39
    new-instance v0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction_Builder_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction_Builder_Factory;->statusBarProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, p0}, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction_Builder_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction_Builder_Factory;->get()Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;

    move-result-object p0

    return-object p0
.end method
