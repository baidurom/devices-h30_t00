.class Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;
.super Ljava/lang/Object;
.source "TextSelectWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/TextSelectWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextSelectWebResultEmui"
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mConfigChangeListener:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCusWebView:Landroid/webkit/WebView;

.field private mMsgLin:Landroid/widget/LinearLayout;

.field private mProgress:Landroid/widget/ProgressBar;

.field private srcStr:Ljava/lang/String;

.field final synthetic this$0:Landroid/webkit/TextSelectWindow;

.field private url:Ljava/lang/String;

.field private url_serach:Ljava/lang/String;

.field private url_wikipedia:Ljava/lang/String;

.field private webResultDialog:Landroid/app/AlertDialog$Builder;

.field private webResultNotConnectDialog:Landroid/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>(Landroid/webkit/TextSelectWindow;Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter "context"
    .parameter "src"

    .prologue
    const/4 v4, 0x0

    .line 837
    iput-object p1, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->this$0:Landroid/webkit/TextSelectWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 991
    new-instance v2, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui$3;

    invoke-direct {v2, p0}, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui$3;-><init>(Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;)V

    iput-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->mConfigChangeListener:Landroid/content/BroadcastReceiver;

    .line 838
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "androidhwext:style/Theme.Emui"

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 839
    .local v1, themeID:I
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p2, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 841
    .local v0, themeContext:Landroid/view/ContextThemeWrapper;
    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->inflater:Landroid/view/LayoutInflater;

    .line 846
    iput-object v0, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->mContext:Landroid/content/Context;

    .line 847
    iput-object p3, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->srcStr:Ljava/lang/String;

    .line 848
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ja"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 852
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://ja.m.wikipedia.org/wiki/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->srcStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->url_wikipedia:Ljava/lang/String;

    .line 853
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.google.co.jp/search?q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->srcStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->url_serach:Ljava/lang/String;

    .line 918
    :goto_0
    invoke-direct {p0, p2}, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    invoke-direct {p0, p2, v2}, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->createWebDialog(Landroid/content/Context;Z)V

    .line 919
    return-void

    .line 856
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 859
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://zh.m.wikipedia.org/wiki/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->srcStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->url_wikipedia:Ljava/lang/String;

    .line 861
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.google.com.hk/search?q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->srcStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->url_serach:Ljava/lang/String;

    goto :goto_0

    .line 863
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "es"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 866
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://es.m.wikipedia.org/wiki/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->srcStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->url_wikipedia:Ljava/lang/String;

    .line 867
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.google.es/search?q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->srcStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->url_serach:Ljava/lang/String;

    goto/16 :goto_0

    .line 869
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "pt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 872
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://pt.m.wikipedia.org/wiki/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->srcStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->url_wikipedia:Ljava/lang/String;

    .line 874
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.google.pt/search?q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->srcStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->url_serach:Ljava/lang/String;

    goto/16 :goto_0

    .line 876
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "de"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 879
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://de.m.wikipedia.org/wiki/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->srcStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->url_wikipedia:Ljava/lang/String;

    .line 881
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.google.de/search?q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->srcStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->url_serach:Ljava/lang/String;

    goto/16 :goto_0

    .line 883
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 886
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://fr.m.wikipedia.org/wiki/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->srcStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->url_wikipedia:Ljava/lang/String;

    .line 888
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.google.fr/search?q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->srcStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->url_serach:Ljava/lang/String;

    goto/16 :goto_0

    .line 890
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "pl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 893
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://pl.m.wikipedia.org/wiki/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->srcStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->url_wikipedia:Ljava/lang/String;

    .line 895
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.google.pl/search?q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->srcStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->url_serach:Ljava/lang/String;

    goto/16 :goto_0

    .line 897
    :cond_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "it"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 900
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://it.m.wikipedia.org/wiki/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->srcStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->url_wikipedia:Ljava/lang/String;

    .line 902
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.google.it/search?q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->srcStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->url_serach:Ljava/lang/String;

    goto/16 :goto_0

    .line 904
    :cond_7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ru"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 907
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://ru.m.wikipedia.org/wiki/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->srcStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->url_wikipedia:Ljava/lang/String;

    .line 909
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.google.ru/search?q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->srcStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->url_serach:Ljava/lang/String;

    goto/16 :goto_0

    .line 914
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://en.m.wikipedia.org/wiki/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->srcStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->url_wikipedia:Ljava/lang/String;

    .line 916
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.google.com/search?q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->srcStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->url_serach:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method static synthetic access$500(Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 812
    iget-object v0, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 812
    iget-object v0, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private createWebDialog(Landroid/content/Context;Z)V
    .locals 8
    .parameter "context"
    .parameter "isNetworkAvailable"

    .prologue
    const/4 v7, 0x0

    const v6, 0x3020087

    const v5, 0x3020086

    const/4 v4, 0x1

    .line 922
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "androidhwext:style/Theme.Emui.Dialog.Alert"

    invoke-virtual {v2, v3, v7, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 923
    .local v1, themeID:I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->webResultNotConnectDialog:Landroid/app/AlertDialog$Builder;

    .line 926
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->webResultDialog:Landroid/app/AlertDialog$Builder;

    .line 927
    iget-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->webResultDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 930
    iget-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->webResultDialog:Landroid/app/AlertDialog$Builder;

    new-instance v3, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui$1;

    invoke-direct {v3, p0}, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui$1;-><init>(Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 938
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 939
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 940
    iget-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->mConfigChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 942
    iget-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->webResultDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 947
    iget-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->webResultNotConnectDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 948
    invoke-static {}, Landroid/webkit/TextSelectWindow;->access$300()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 949
    iget-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->webResultNotConnectDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 954
    iget-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->webResultDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 956
    iget-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->url_wikipedia:Ljava/lang/String;

    iput-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->url:Ljava/lang/String;

    .line 968
    :goto_0
    if-nez p2, :cond_1

    .line 969
    iget-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->webResultNotConnectDialog:Landroid/app/AlertDialog$Builder;

    const v3, 0x3020089

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 970
    iget-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->webResultNotConnectDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 971
    iget-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->webResultNotConnectDialog:Landroid/app/AlertDialog$Builder;

    const v3, 0x104000a

    new-instance v4, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui$2;

    invoke-direct {v4, p0}, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui$2;-><init>(Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 979
    iget-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->webResultNotConnectDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 987
    :goto_1
    return-void

    .line 959
    :cond_0
    iget-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->webResultNotConnectDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 964
    iget-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->webResultDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 966
    iget-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->url_serach:Ljava/lang/String;

    iput-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->url:Ljava/lang/String;

    goto :goto_0

    .line 986
    :cond_1
    invoke-direct {p0, p1}, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->showWebDialogView(Landroid/content/Context;)V

    goto :goto_1
.end method

.method private isNetworkAvailable(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 1095
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1097
    .local v0, cwjManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1098
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1099
    const/4 v2, 0x1

    .line 1101
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setWebView(Landroid/webkit/WebView;)V
    .locals 4
    .parameter "mCusWebView2"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1065
    iget-object v1, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->mCusWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 1066
    .local v0, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1067
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 1068
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1069
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 1070
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 1071
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON_DEMAND:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 1072
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 1073
    iget-object v1, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->mCusWebView:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui$7;

    invoke-direct {v2, p0}, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui$7;-><init>(Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1084
    iget-object v1, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->mCusWebView:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui$8;

    invoke-direct {v2, p0}, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui$8;-><init>(Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1088
    return-void
.end method

.method private showDialog(Ljava/lang/String;)V
    .locals 6
    .parameter "url"

    .prologue
    const/high16 v5, 0x104

    .line 1022
    iget-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->webResultDialog:Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->mMsgLin:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1023
    iget-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->webResultDialog:Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 1026
    const-string v2, "dialogNum"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "dialogNum"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 1027
    :cond_0
    const-string v2, "dialogNum"

    const-string v3, "1"

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1028
    iget-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->webResultDialog:Landroid/app/AlertDialog$Builder;

    const v3, 0x3020088

    new-instance v4, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui$4;

    invoke-direct {v4, p0, p1}, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui$4;-><init>(Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1040
    iget-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->webResultDialog:Landroid/app/AlertDialog$Builder;

    new-instance v3, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui$5;

    invoke-direct {v3, p0}, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui$5;-><init>(Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1059
    :goto_0
    iget-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->webResultDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1060
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1061
    return-void

    .line 1048
    .end local v0           #alert:Landroid/app/AlertDialog;
    :cond_1
    const-string v2, "dialogNum"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1049
    .local v1, num:I
    const-string v2, "dialogNum"

    add-int/lit8 v3, v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1050
    iget-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->webResultDialog:Landroid/app/AlertDialog$Builder;

    new-instance v3, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui$6;

    invoke-direct {v3, p0}, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui$6;-><init>(Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private showWebDialogView(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1011
    iget-object v0, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x3070021

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->mMsgLin:Landroid/widget/LinearLayout;

    .line 1013
    iget-object v0, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->mMsgLin:Landroid/widget/LinearLayout;

    const v1, 0x30d002d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->mCusWebView:Landroid/webkit/WebView;

    .line 1015
    iget-object v0, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->mMsgLin:Landroid/widget/LinearLayout;

    const v1, 0x30d002c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->mProgress:Landroid/widget/ProgressBar;

    .line 1016
    iget-object v0, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->mCusWebView:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->setWebView(Landroid/webkit/WebView;)V

    .line 1017
    iget-object v0, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->mCusWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1018
    iget-object v0, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->url:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->showDialog(Ljava/lang/String;)V

    .line 1019
    return-void
.end method
