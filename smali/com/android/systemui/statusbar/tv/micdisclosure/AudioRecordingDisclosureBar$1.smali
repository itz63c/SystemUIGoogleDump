.class Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar$1;
.super Ljava/lang/Object;
.source "AudioRecordingDisclosureBar.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->showIfNeeded()V
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

    .line 238
    iput-object p1, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar$1;->this$0:Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar$1;->this$0:Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->access$000(Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar$1;->this$0:Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->access$102(Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;Z)Z

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar$1;->this$0:Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->access$200(Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 250
    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar$1;->this$0:Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->access$300(Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;)V

    return-void
.end method
