.class Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver$1;
.super Landroid/app/IProcessObserver$Stub;
.source "MicrophoneForegroundServicesObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;


# direct methods
.method public static synthetic $r8$lambda$F35lV_0Kx5BsmF2L8OUPXC5Hqjk(Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver$1;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver$1;->lambda$onProcessDied$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$psA77pKVVNePbuf3aoVUfBazHi0(Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver$1;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver$1;->lambda$onForegroundServicesChanged$0(II)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver$1;->this$0:Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$onForegroundServicesChanged$0(II)V
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver$1;->this$0:Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;

    and-int/lit16 p2, p2, 0x80

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;->access$100(Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;IZ)V

    return-void
.end method

.method private synthetic lambda$onProcessDied$1(I)V
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver$1;->this$0:Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;->access$000(Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;I)V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 0

    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .locals 1

    .line 190
    iget-object p2, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver$1;->this$0:Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;

    iget-object p2, p2, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver$1-$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver$1-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver$1;II)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProcessDied(II)V
    .locals 1

    .line 196
    iget-object p2, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver$1;->this$0:Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;

    iget-object p2, p2, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver$1-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver$1-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver$1;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
