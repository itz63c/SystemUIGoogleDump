.class final Lcom/google/android/systemui/assist/uihints/TaskStackNotifier_Factory$InstanceHolder;
.super Ljava/lang/Object;
.source "TaskStackNotifier_Factory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/assist/uihints/TaskStackNotifier_Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/android/systemui/assist/uihints/TaskStackNotifier_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier_Factory;

    invoke-direct {v0}, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier_Factory;-><init>()V

    sput-object v0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier_Factory$InstanceHolder;->INSTANCE:Lcom/google/android/systemui/assist/uihints/TaskStackNotifier_Factory;

    return-void
.end method

.method static synthetic access$000()Lcom/google/android/systemui/assist/uihints/TaskStackNotifier_Factory;
    .locals 1

    .line 28
    sget-object v0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier_Factory$InstanceHolder;->INSTANCE:Lcom/google/android/systemui/assist/uihints/TaskStackNotifier_Factory;

    return-object v0
.end method
