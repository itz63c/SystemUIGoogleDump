.class Lcom/android/systemui/settings/brightness/BrightnessSlider$1;
.super Ljava/lang/Object;
.source "BrightnessSlider.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/brightness/BrightnessSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessSlider;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 193
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$000(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 194
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$000(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    move-result-object p1

    iget-object p3, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p3}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$100(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Z

    move-result p3

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->isChecked()Z

    move-result p0

    const/4 v0, 0x0

    invoke-interface {p1, p3, p0, p2, v0}, Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;->onChanged(ZZIZ)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .line 200
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$102(Lcom/android/systemui/settings/brightness/BrightnessSlider;Z)Z

    .line 202
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$000(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 203
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$000(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {v1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$100(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-virtual {v2}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->isChecked()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    .line 204
    invoke-virtual {v3}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->getValue()I

    move-result v3

    .line 203
    invoke-interface {p1, v1, v2, v3, v0}, Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;->onChanged(ZZIZ)V

    .line 207
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-virtual {p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->setChecked(Z)V

    .line 209
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$200(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 210
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$200(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->showMirror()V

    .line 211
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$200(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$300(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->setLocation(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .line 217
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$102(Lcom/android/systemui/settings/brightness/BrightnessSlider;Z)Z

    .line 219
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$000(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 220
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$000(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$100(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-virtual {v1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    .line 221
    invoke-virtual {v2}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->getValue()I

    move-result v2

    const/4 v3, 0x1

    .line 220
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;->onChanged(ZZIZ)V

    .line 224
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$200(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 225
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$200(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->hideMirror()V

    :cond_1
    return-void
.end method
