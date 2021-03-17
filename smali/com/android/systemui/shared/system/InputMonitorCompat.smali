.class public Lcom/android/systemui/shared/system/InputMonitorCompat;
.super Ljava/lang/Object;
.source "InputMonitorCompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/systemui/shared/system/InputMonitorCompat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mForReturn:Z

.field private final mInputMonitor:Landroid/view/InputMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    new-instance v0, Lcom/android/systemui/shared/system/InputMonitorCompat$1;

    invoke-direct {v0}, Lcom/android/systemui/shared/system/InputMonitorCompat$1;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/system/InputMonitorCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/android/systemui/shared/system/InputMonitorCompat;->mForReturn:Z

    .line 99
    sget-object v0, Landroid/view/InputMonitor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/InputMonitor;

    iput-object p1, p0, Lcom/android/systemui/shared/system/InputMonitorCompat;->mInputMonitor:Landroid/view/InputMonitor;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/systemui/shared/system/InputMonitorCompat$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/system/InputMonitorCompat;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/view/InputMonitor;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/android/systemui/shared/system/InputMonitorCompat;->mForReturn:Z

    .line 44
    iput-object p1, p0, Lcom/android/systemui/shared/system/InputMonitorCompat;->mInputMonitor:Landroid/view/InputMonitor;

    return-void
.end method

.method public static obtainReturnValue(Landroid/view/InputMonitor;)Lcom/android/systemui/shared/system/InputMonitorCompat;
    .locals 1

    .line 82
    new-instance v0, Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/system/InputMonitorCompat;-><init>(Landroid/view/InputMonitor;)V

    const/4 p0, 0x1

    .line 83
    iput-boolean p0, v0, Lcom/android/systemui/shared/system/InputMonitorCompat;->mForReturn:Z

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/systemui/shared/system/InputMonitorCompat;->mInputMonitor:Landroid/view/InputMonitor;

    .line 95
    iget-boolean p0, p0, Lcom/android/systemui/shared/system/InputMonitorCompat;->mForReturn:Z

    if-eqz p0, :cond_0

    const/4 p2, 0x1

    .line 94
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/view/InputMonitor;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
