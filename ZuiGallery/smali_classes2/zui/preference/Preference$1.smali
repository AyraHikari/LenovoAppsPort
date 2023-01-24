.class Lzui/preference/Preference$1;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Lzui/util/PreferenceBase$PreferenceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/preference/Preference;


# direct methods
.method constructor <init>(Lzui/preference/Preference;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lzui/preference/Preference$1;->this$0:Lzui/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshSelf()V
    .locals 1

    .line 36
    iget-object v0, p0, Lzui/preference/Preference$1;->this$0:Lzui/preference/Preference;

    invoke-static {v0}, Lzui/preference/Preference;->access$000(Lzui/preference/Preference;)V

    return-void
.end method
