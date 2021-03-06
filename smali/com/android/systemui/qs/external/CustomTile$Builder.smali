.class public Lcom/android/systemui/qs/external/CustomTile$Builder;
.super Ljava/lang/Object;
.source "CustomTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/external/CustomTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field final mBackgroundLooper:Landroid/os/Looper;

.field final mMainHandler:Landroid/os/Handler;

.field final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field final mQSHostLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/qs/QSHost;",
            ">;"
        }
    .end annotation
.end field

.field final mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

.field mSpec:Ljava/lang/String;

.field final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field mUserContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ldagger/Lazy;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/qs/QSHost;",
            ">;",
            "Landroid/os/Looper;",
            "Landroid/os/Handler;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/qs/logging/QSLogger;",
            ")V"
        }
    .end annotation

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 459
    iput-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mSpec:Ljava/lang/String;

    .line 471
    iput-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mQSHostLazy:Ldagger/Lazy;

    .line 472
    iput-object p2, p0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mBackgroundLooper:Landroid/os/Looper;

    .line 473
    iput-object p3, p0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mMainHandler:Landroid/os/Handler;

    .line 474
    iput-object p4, p0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 475
    iput-object p5, p0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 476
    iput-object p6, p0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 477
    iput-object p7, p0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    return-void
.end method


# virtual methods
.method build()Lcom/android/systemui/qs/external/CustomTile;
    .locals 12

    .line 491
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mUserContext:Landroid/content/Context;

    const-string v1, "UserContext cannot be null"

    .line 492
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 494
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mSpec:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 495
    new-instance v0, Lcom/android/systemui/qs/external/CustomTile;

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mQSHostLazy:Ldagger/Lazy;

    .line 496
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/qs/QSHost;

    iget-object v3, p0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mBackgroundLooper:Landroid/os/Looper;

    iget-object v4, p0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mMainHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v6, p0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v7, p0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v8, p0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    iget-object v10, p0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mUserContext:Landroid/content/Context;

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/android/systemui/qs/external/CustomTile;-><init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Ljava/lang/String;Landroid/content/Context;Lcom/android/systemui/qs/external/CustomTile$1;)V

    return-object v0
.end method

.method setSpec(Ljava/lang/String;)Lcom/android/systemui/qs/external/CustomTile$Builder;
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mSpec:Ljava/lang/String;

    return-object p0
.end method

.method setUserContext(Landroid/content/Context;)Lcom/android/systemui/qs/external/CustomTile$Builder;
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mUserContext:Landroid/content/Context;

    return-object p0
.end method
