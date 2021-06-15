.class final Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;
.super Ljava/lang/Object;
.source "CellularTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/CellularTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CellSignalCallback"
.end annotation


# instance fields
.field private final mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/CellularTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/CellularTile;)V
    .locals 1

    .line 268
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    new-instance p1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;-><init>(Lcom/android/systemui/qs/tiles/CellularTile$1;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/CellularTile;Lcom/android/systemui/qs/tiles/CellularTile$1;)V
    .locals 0

    .line 268
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;-><init>(Lcom/android/systemui/qs/tiles/CellularTile;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;)Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    return-object p0
.end method


# virtual methods
.method public setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->airplaneModeEnabled:Z

    .line 296
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {p0, v0}, Lcom/android/systemui/qs/tiles/CellularTile;->access$700(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V

    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/CellularTile;->access$800(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->setMobileDataEnabled(Z)V

    return-void
.end method

.method public setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;)V
    .locals 2

    .line 273
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->qsIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    if-nez v0, :cond_0

    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CellularTile;->access$400(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getMobileDataNetworkName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataSubscriptionName:Ljava/lang/CharSequence;

    .line 278
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-object v1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->description:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->typeContentDescriptionHtml:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataContentDescription:Ljava/lang/CharSequence;

    .line 280
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->activityIn:Z

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->activityIn:Z

    .line 281
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->activityOut:Z

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->activityOut:Z

    .line 282
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->roaming:Z

    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->roaming:Z

    .line 283
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/CellularTile;->access$400(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getNumberSubscriptions()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->multipleSubs:Z

    .line 284
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    invoke-static {p1, p0}, Lcom/android/systemui/qs/tiles/CellularTile;->access$500(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V

    return-void
.end method

.method public setNoSims(ZZ)V
    .locals 0

    .line 289
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-boolean p1, p2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->noSim:Z

    .line 290
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {p0, p2}, Lcom/android/systemui/qs/tiles/CellularTile;->access$600(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V

    return-void
.end method
