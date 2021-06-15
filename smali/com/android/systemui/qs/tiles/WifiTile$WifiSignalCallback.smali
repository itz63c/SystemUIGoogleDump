.class public final Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;
.super Ljava/lang/Object;
.source "WifiTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WifiTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "WifiSignalCallback"
.end annotation


# instance fields
.field final mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiTile;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/qs/tiles/WifiTile;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    new-instance p1, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    invoke-direct {p1}, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    return-void
.end method


# virtual methods
.method public setWifiIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$WifiIndicators;)V
    .locals 3

    .line 313
    invoke-static {}, Lcom/android/systemui/qs/tiles/WifiTile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$100(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWifiSignalChanged enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/policy/NetworkController$WifiIndicators;->enabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$WifiIndicators;->qsIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    if-nez v0, :cond_1

    return-void

    .line 317
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/policy/NetworkController$WifiIndicators;->enabled:Z

    iput-boolean v2, v1, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    .line 318
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    iput-boolean v2, v1, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->connected:Z

    .line 319
    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v2, v1, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    .line 320
    iget-object v2, p1, Lcom/android/systemui/statusbar/policy/NetworkController$WifiIndicators;->description:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->ssid:Ljava/lang/String;

    .line 321
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/policy/NetworkController$WifiIndicators;->activityIn:Z

    iput-boolean v2, v1, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->activityIn:Z

    .line 322
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/policy/NetworkController$WifiIndicators;->activityOut:Z

    iput-boolean v2, v1, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->activityOut:Z

    .line 323
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalContentDescription:Ljava/lang/String;

    .line 324
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$WifiIndicators;->isTransient:Z

    iput-boolean v0, v1, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->isTransient:Z

    .line 325
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$WifiIndicators;->statusLabel:Ljava/lang/String;

    iput-object p1, v1, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->statusLabel:Ljava/lang/String;

    .line 326
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/WifiTile;->access$200(Lcom/android/systemui/qs/tiles/WifiTile;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 327
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/WifiTile;->access$300(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->access$400(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)V

    .line 329
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method
