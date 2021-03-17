.class public final Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIAppWidgetServiceFactory;
.super Ljava/lang/Object;
.source "FrameworkServicesModule_ProvideIAppWidgetServiceFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIAppWidgetServiceFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/internal/appwidget/IAppWidgetService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIAppWidgetServiceFactory;
    .locals 1

    .line 23
    invoke-static {}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIAppWidgetServiceFactory$InstanceHolder;->access$000()Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIAppWidgetServiceFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideIAppWidgetService()Lcom/android/internal/appwidget/IAppWidgetService;
    .locals 2

    .line 27
    invoke-static {}, Lcom/android/systemui/dagger/FrameworkServicesModule;->provideIAppWidgetService()Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/appwidget/IAppWidgetService;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/internal/appwidget/IAppWidgetService;
    .locals 0

    .line 19
    invoke-static {}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIAppWidgetServiceFactory;->provideIAppWidgetService()Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIAppWidgetServiceFactory;->get()Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object p0

    return-object p0
.end method
