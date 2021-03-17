.class Lcom/android/systemui/settings/brightness/BrightnessSlider$2;
.super Ljava/lang/Object;
.source "BrightnessSlider.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 231
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 234
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    xor-int/lit8 v0, p2, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$400(Lcom/android/systemui/settings/brightness/BrightnessSlider;Z)V

    .line 236
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$000(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 237
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$000(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {v0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$100(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-virtual {v1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->getValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, p2, v1, v2}, Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;->onChanged(ZZIZ)V

    .line 240
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$500(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/settings/brightness/ToggleSlider;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 241
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSlider$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-static {p0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->access$500(Lcom/android/systemui/settings/brightness/BrightnessSlider;)Lcom/android/systemui/settings/brightness/ToggleSlider;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/android/systemui/settings/brightness/ToggleSlider;->setChecked(Z)V

    :cond_1
    return-void
.end method
