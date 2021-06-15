.class Lcom/google/android/systemui/autorotate/AutorotateDataService$1;
.super Ljava/lang/Object;
.source "AutorotateDataService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/autorotate/AutorotateDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/autorotate/AutorotateDataService;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$1;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$1;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static {v0}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$300(Lcom/google/android/systemui/autorotate/AutorotateDataService;)Lcom/google/android/systemui/autorotate/DataLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$1;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static {v1}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$100(Lcom/google/android/systemui/autorotate/AutorotateDataService;)[Lcom/google/android/systemui/autorotate/SensorData;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$1;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static {v2}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$200(Lcom/google/android/systemui/autorotate/AutorotateDataService;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/systemui/autorotate/DataLogger;->setDeviceRotatedData([Lcom/google/android/systemui/autorotate/SensorData;I)V

    .line 148
    iget-object v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$1;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static {v0}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$300(Lcom/google/android/systemui/autorotate/AutorotateDataService;)Lcom/google/android/systemui/autorotate/DataLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$1;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static {v1}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$400(Lcom/google/android/systemui/autorotate/AutorotateDataService;)J

    move-result-wide v1

    iget-object p0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$1;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static {p0}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$200(Lcom/google/android/systemui/autorotate/AutorotateDataService;)I

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/systemui/autorotate/DataLogger;->pushSensorDataReadyEvent(JI)V

    return-void
.end method
