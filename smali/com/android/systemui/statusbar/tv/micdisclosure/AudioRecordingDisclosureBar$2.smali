.class Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AudioRecordingDisclosureBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->animateAlphaTo(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar$2;->this$0:Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 298
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar$2;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 307
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar$2;->mCancelled:Z

    if-nez p1, :cond_0

    .line 308
    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar$2;->this$0:Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->access$400(Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    const/4 p1, 0x0

    .line 292
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar$2;->mCancelled:Z

    return-void
.end method
