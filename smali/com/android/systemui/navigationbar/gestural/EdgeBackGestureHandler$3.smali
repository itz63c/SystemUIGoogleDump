.class Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$3;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source "EdgeBackGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$3;->this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 131
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$3;->this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->access$802(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 133
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$3;->this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    const-string p1, "_UNKNOWN"

    invoke-static {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->access$802(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public onTaskStackChanged()V
    .locals 1

    .line 126
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$3;->this$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->access$700(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->access$602(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;Z)Z

    return-void
.end method
