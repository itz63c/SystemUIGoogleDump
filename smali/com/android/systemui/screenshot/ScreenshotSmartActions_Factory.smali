.class public final Lcom/android/systemui/screenshot/ScreenshotSmartActions_Factory;
.super Ljava/lang/Object;
.source "ScreenshotSmartActions_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/ScreenshotSmartActions_Factory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/screenshot/ScreenshotSmartActions;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/screenshot/ScreenshotSmartActions_Factory;
    .locals 1

    .line 21
    invoke-static {}, Lcom/android/systemui/screenshot/ScreenshotSmartActions_Factory$InstanceHolder;->access$000()Lcom/android/systemui/screenshot/ScreenshotSmartActions_Factory;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Lcom/android/systemui/screenshot/ScreenshotSmartActions;
    .locals 1

    .line 25
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotSmartActions;

    invoke-direct {v0}, Lcom/android/systemui/screenshot/ScreenshotSmartActions;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/screenshot/ScreenshotSmartActions;
    .locals 0

    .line 17
    invoke-static {}, Lcom/android/systemui/screenshot/ScreenshotSmartActions_Factory;->newInstance()Lcom/android/systemui/screenshot/ScreenshotSmartActions;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotSmartActions_Factory;->get()Lcom/android/systemui/screenshot/ScreenshotSmartActions;

    move-result-object p0

    return-object p0
.end method
