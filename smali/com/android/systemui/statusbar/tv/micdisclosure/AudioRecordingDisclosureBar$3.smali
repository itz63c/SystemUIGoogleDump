.class Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar$3;
.super Ljava/lang/Object;
.source "AudioRecordingDisclosureBar.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar$3;->this$0:Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 3

    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar$3;->this$0:Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->access$500(Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;)V

    .line 371
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar$3;->this$0:Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->access$600(Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;)Z

    move-result v0

    const-string v1, "mic_disclosure_enabled"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eq v0, p1, :cond_1

    .line 372
    iget-object p1, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar$3;->this$0:Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->access$600(Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->access$602(Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;Z)Z

    .line 373
    iget-object p1, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar$3;->this$0:Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->access$600(Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 374
    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar$3;->this$0:Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->access$700(Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;)V

    goto :goto_0

    .line 376
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar$3;->this$0:Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->access$800(Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;)V

    :cond_1
    :goto_0
    return-void
.end method
