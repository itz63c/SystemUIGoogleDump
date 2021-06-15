.class public final Lcom/android/systemui/dagger/DependencyProvider_ProvideAccessibilityFloatingMenuControllerFactory;
.super Ljava/lang/Object;
.source "DependencyProvider_ProvideAccessibilityFloatingMenuControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;",
        ">;"
    }
.end annotation


# instance fields
.field private final accessibilityButtonModeObserverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final accessibilityButtonTargetsObserverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;",
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

.field private final module:Lcom/android/systemui/dagger/DependencyProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideAccessibilityFloatingMenuControllerFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    .line 34
    iput-object p2, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideAccessibilityFloatingMenuControllerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p3, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideAccessibilityFloatingMenuControllerFactory;->accessibilityButtonTargetsObserverProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p4, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideAccessibilityFloatingMenuControllerFactory;->accessibilityButtonModeObserverProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideAccessibilityFloatingMenuControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;",
            ">;)",
            "Lcom/android/systemui/dagger/DependencyProvider_ProvideAccessibilityFloatingMenuControllerFactory;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/android/systemui/dagger/DependencyProvider_ProvideAccessibilityFloatingMenuControllerFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/dagger/DependencyProvider_ProvideAccessibilityFloatingMenuControllerFactory;-><init>(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideAccessibilityFloatingMenuController(Lcom/android/systemui/dagger/DependencyProvider;Landroid/content/Context;Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;)Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;
    .locals 0

    .line 55
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/dagger/DependencyProvider;->provideAccessibilityFloatingMenuController(Landroid/content/Context;Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;)Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideAccessibilityFloatingMenuControllerFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    iget-object v1, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideAccessibilityFloatingMenuControllerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideAccessibilityFloatingMenuControllerFactory;->accessibilityButtonTargetsObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;

    iget-object p0, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideAccessibilityFloatingMenuControllerFactory;->accessibilityButtonModeObserverProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideAccessibilityFloatingMenuControllerFactory;->provideAccessibilityFloatingMenuController(Lcom/android/systemui/dagger/DependencyProvider;Landroid/content/Context;Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;)Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideAccessibilityFloatingMenuControllerFactory;->get()Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;

    move-result-object p0

    return-object p0
.end method
