.class public final synthetic Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView-$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

.field public final synthetic f$1:I

.field public final synthetic f$2:[Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;I[Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView-$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    iput p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView-$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView-$$ExternalSyntheticLambda1;->f$2:[Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView-$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView-$$ExternalSyntheticLambda1;->f$1:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView-$$ExternalSyntheticLambda1;->f$2:[Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->$r8$lambda$cAV7Kh7LAg5PgaVJqZT5bKYm6gg(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;I[Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;)V

    return-void
.end method
