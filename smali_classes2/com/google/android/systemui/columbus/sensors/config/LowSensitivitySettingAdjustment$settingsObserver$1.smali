.class final Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment$settingsObserver$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LowSensitivitySettingAdjustment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;-><init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/net/Uri;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment$settingsObserver$1;->this$0:Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment$settingsObserver$1;->invoke(Landroid/net/Uri;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment$settingsObserver$1;->this$0:Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;->access$updateLowSensitivity(Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;)V

    return-void
.end method
