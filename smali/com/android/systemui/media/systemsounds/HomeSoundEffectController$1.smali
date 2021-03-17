.class Lcom/android/systemui/media/systemsounds/HomeSoundEffectController$1;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source "HomeSoundEffectController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController$1;->this$0:Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController$1;->this$0:Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;

    invoke-static {p0, p1}, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->access$000(Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method
