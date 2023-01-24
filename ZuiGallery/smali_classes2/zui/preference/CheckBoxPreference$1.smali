.class Lzui/preference/CheckBoxPreference$1;
.super Ljava/lang/Object;
.source "CheckBoxPreference.java"

# interfaces
.implements Lzui/util/PreferenceBase$PreferenceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/preference/CheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lzui/preference/CheckBoxPreference;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lzui/preference/CheckBoxPreference$1;->this$0:Lzui/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshSelf()V
    .locals 1

    .line 34
    iget-object v0, p0, Lzui/preference/CheckBoxPreference$1;->this$0:Lzui/preference/CheckBoxPreference;

    invoke-static {v0}, Lzui/preference/CheckBoxPreference;->access$000(Lzui/preference/CheckBoxPreference;)V

    return-void
.end method
