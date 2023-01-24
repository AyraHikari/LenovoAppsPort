.class Lzui/preference/DialogPreference$1;
.super Ljava/lang/Object;
.source "DialogPreference.java"

# interfaces
.implements Lzui/util/PreferenceBase$PreferenceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/preference/DialogPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/preference/DialogPreference;


# direct methods
.method constructor <init>(Lzui/preference/DialogPreference;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lzui/preference/DialogPreference$1;->this$0:Lzui/preference/DialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshSelf()V
    .locals 1

    .line 61
    iget-object v0, p0, Lzui/preference/DialogPreference$1;->this$0:Lzui/preference/DialogPreference;

    invoke-static {v0}, Lzui/preference/DialogPreference;->access$000(Lzui/preference/DialogPreference;)V

    return-void
.end method
