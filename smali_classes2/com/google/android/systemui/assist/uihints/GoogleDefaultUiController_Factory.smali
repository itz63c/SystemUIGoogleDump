.class public final Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;
.super Ljava/lang/Object;
.source "GoogleDefaultUiController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;",
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

.field private final googleAssistLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/GoogleAssistLogger;",
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
            "Lcom/google/android/systemui/assist/GoogleAssistLogger;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;->googleAssistLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/GoogleAssistLogger;",
            ">;)",
            "Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/google/android/systemui/assist/GoogleAssistLogger;)Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;
    .locals 1

    .line 40
    new-instance v0, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;-><init>(Landroid/content/Context;Lcom/google/android/systemui/assist/GoogleAssistLogger;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;->googleAssistLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/assist/GoogleAssistLogger;

    invoke-static {v0, p0}, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;->newInstance(Landroid/content/Context;Lcom/google/android/systemui/assist/GoogleAssistLogger;)Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;->get()Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;

    move-result-object p0

    return-object p0
.end method
