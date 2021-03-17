.class final Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIAppWidgetServiceFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "FrameworkServicesModule_ProvideIAppWidgetServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIAppWidgetServiceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIAppWidgetServiceFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIAppWidgetServiceFactory;

    invoke-direct {v0}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIAppWidgetServiceFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIAppWidgetServiceFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIAppWidgetServiceFactory;

    return-void
.end method

.method static synthetic access$000()Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIAppWidgetServiceFactory;
    .locals 1

    .line 30
    sget-object v0, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIAppWidgetServiceFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIAppWidgetServiceFactory;

    return-object v0
.end method
