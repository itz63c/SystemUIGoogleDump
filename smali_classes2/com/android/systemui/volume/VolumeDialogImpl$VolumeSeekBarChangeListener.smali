.class final Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;
.super Ljava/lang/Object;
.source "VolumeDialogImpl.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumeSeekBarChangeListener"
.end annotation


# instance fields
.field private final mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 0

    .line 1891
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1892
    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Lcom/android/systemui/volume/VolumeDialogImpl$1;)V
    .locals 0

    .line 1888
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    .line 1897
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1898
    :cond_0
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$5100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    invoke-static {v2}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onProgressChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " fromUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez p3, :cond_2

    return-void

    .line 1901
    :cond_2
    iget-object p3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {p3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object p3

    iget p3, p3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    if-lez p3, :cond_3

    .line 1902
    iget-object p3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {p3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object p3

    iget p3, p3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    mul-int/lit8 p3, p3, 0x64

    if-ge p2, p3, :cond_3

    .line 1904
    invoke-virtual {p1, p3}, Landroid/widget/SeekBar;->setProgress(I)V

    move p2, p3

    .line 1908
    :cond_3
    invoke-static {p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$5200(Landroid/widget/SeekBar;I)I

    move-result p1

    .line 1909
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object p2

    iget p2, p2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-ne p2, p1, :cond_4

    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object p2

    iget-boolean p2, p2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz p2, :cond_5

    if-lez p1, :cond_5

    .line 1910
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$3102(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;J)J

    .line 1911
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result p2

    if-eq p2, p1, :cond_5

    .line 1912
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$4100(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {p3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result p3

    invoke-interface {p2, p3}, Lcom/android/systemui/plugins/VolumeDialogController;->setActiveStream(I)V

    .line 1913
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$4100(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {p3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result p3

    invoke-interface {p2, p3, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    .line 1914
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {p2, p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2602(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    const/16 p2, 0x9

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1915
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {p0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p3, v0

    const/4 p0, 0x1

    .line 1916
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, p0

    .line 1915
    invoke-static {p2, p3}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 1923
    sget-boolean p1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$5100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartTrackingTouch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$4100(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/VolumeDialogController;->setActiveStream(I)V

    .line 1925
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2802(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .line 1930
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$5100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopTrackingTouch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2802(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)Z

    .line 1932
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$3102(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;J)J

    .line 1933
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$5200(Landroid/widget/SeekBar;I)I

    move-result p1

    const/16 v0, 0x10

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1934
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 1935
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-eq v0, p1, :cond_1

    .line 1936
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$4900(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$H;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$4900(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$H;

    move-result-object v0

    const/4 v1, 0x3

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method
