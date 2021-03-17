.class abstract Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver;
.super Ljava/lang/Object;
.source "AudioActivityObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver$OnAudioActivityStateChangeListener;
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final mListener:Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver$OnAudioActivityStateChangeListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver$OnAudioActivityStateChangeListener;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver;->mListener:Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver$OnAudioActivityStateChangeListener;

    return-void
.end method


# virtual methods
.method abstract getActivePackages()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract start()V
.end method

.method abstract stop()V
.end method
