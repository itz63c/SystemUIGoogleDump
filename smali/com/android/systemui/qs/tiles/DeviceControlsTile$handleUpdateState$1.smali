.class final synthetic Lcom/android/systemui/qs/tiles/DeviceControlsTile$handleUpdateState$1;
.super Ljava/lang/Object;
.source "DeviceControlsTile.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/DeviceControlsTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation


# instance fields
.field final synthetic $tmp0:Lcom/android/systemui/qs/tiles/DeviceControlsTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DeviceControlsTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile$handleUpdateState$1;->$tmp0:Lcom/android/systemui/qs/tiles/DeviceControlsTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile$handleUpdateState$1;->$tmp0:Lcom/android/systemui/qs/tiles/DeviceControlsTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->access$createDialog(Lcom/android/systemui/qs/tiles/DeviceControlsTile;)V

    return-void
.end method
