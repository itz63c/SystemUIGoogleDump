.class final Lcom/android/systemui/media/KeyguardMediaController$useSplitShadeContainer$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KeyguardMediaController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/KeyguardMediaController;-><init>(Lcom/android/systemui/media/MediaHost;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/KeyguardMediaController$useSplitShadeContainer$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/KeyguardMediaController$useSplitShadeContainer$1;

    invoke-direct {v0}, Lcom/android/systemui/media/KeyguardMediaController$useSplitShadeContainer$1;-><init>()V

    sput-object v0, Lcom/android/systemui/media/KeyguardMediaController$useSplitShadeContainer$1;->INSTANCE:Lcom/android/systemui/media/KeyguardMediaController$useSplitShadeContainer$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/media/KeyguardMediaController$useSplitShadeContainer$1;->invoke()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
