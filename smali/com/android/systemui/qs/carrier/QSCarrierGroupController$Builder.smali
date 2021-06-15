.class public Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;
.super Ljava/lang/Object;
.source "QSCarrierGroupController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/carrier/QSCarrierGroupController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

.field private final mCarrierTextControllerBuilder:Lcom/android/keyguard/CarrierTextManager$Builder;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mLooper:Landroid/os/Looper;

.field private final mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mView:Lcom/android/systemui/qs/carrier/QSCarrierGroup;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/ActivityStarter;Landroid/os/Handler;Landroid/os/Looper;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/keyguard/CarrierTextManager$Builder;Landroid/content/Context;Lcom/android/systemui/util/CarrierConfigTracker;)V
    .locals 0

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iput-object p1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 411
    iput-object p2, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mHandler:Landroid/os/Handler;

    .line 412
    iput-object p3, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mLooper:Landroid/os/Looper;

    .line 413
    iput-object p4, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 414
    iput-object p5, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mCarrierTextControllerBuilder:Lcom/android/keyguard/CarrierTextManager$Builder;

    .line 415
    iput-object p6, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mContext:Landroid/content/Context;

    .line 416
    iput-object p7, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/systemui/qs/carrier/QSCarrierGroupController;
    .locals 11

    .line 425
    new-instance v10, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    iget-object v1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mView:Lcom/android/systemui/qs/carrier/QSCarrierGroup;

    iget-object v2, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v3, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mLooper:Landroid/os/Looper;

    iget-object v5, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v6, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mCarrierTextControllerBuilder:Lcom/android/keyguard/CarrierTextManager$Builder;

    iget-object v7, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;-><init>(Lcom/android/systemui/qs/carrier/QSCarrierGroup;Lcom/android/systemui/plugins/ActivityStarter;Landroid/os/Handler;Landroid/os/Looper;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/keyguard/CarrierTextManager$Builder;Landroid/content/Context;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;)V

    return-object v10
.end method

.method public setQSCarrierGroup(Lcom/android/systemui/qs/carrier/QSCarrierGroup;)Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mView:Lcom/android/systemui/qs/carrier/QSCarrierGroup;

    return-object p0
.end method
